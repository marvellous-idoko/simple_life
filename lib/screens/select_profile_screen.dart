import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/utils/utils.dart';

class SelectProfileScreen extends StatefulWidget {
  const SelectProfileScreen({super.key});

  @override
  State<SelectProfileScreen> createState() => _SelectProfileScreenState();
}

class _SelectProfileScreenState extends State<SelectProfileScreen> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _backgroundColor = AppColors.backgroundColor;

  late Future<List<Customer>> _profilesFuture;
  List<dynamic>? _insuredPersons;
  String? _selectedCustomerId;

  Customer? _selectedProfile;

  @override
  void initState() {
    super.initState();
    final state = context.read<GeneralBloc>().state;
    _selectedCustomerId = state.message['selectedCustomer']?['customerId']
        ?.toString();
    _profilesFuture = GeneralRepository().getCustomersByLoggedInUser();
    GeneralRepository().getInsuredPersonByLoggedInUser().then((value) {
      _insuredPersons = value;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _showSelfServiceNotice();
    });
  }

  Future<void> _showSelfServiceNotice() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => PopScope(
        canPop: false,
        child: AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          insetPadding: const EdgeInsets.symmetric(horizontal: 28),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          icon: Container(
            width: 52,
            height: 52,
            decoration: const BoxDecoration(
              color: Color(0xFFFFECEB),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.person_outline_rounded,
              color: _brandRed,
              size: 29,
            ),
          ),
          title: const Text(
            'Select one profile',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _textColor,
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: const Text(
            'This mobile app is a self-service application. Therefore, only one customer profile can be associated with a user. This is a one time activity and you will not be able to change the profile later.',
            textAlign: TextAlign.center,
            style: TextStyle(color: _mutedColor, fontSize: 14, height: 1.5),
          ),
          actionsPadding: const EdgeInsets.fromLTRB(22, 4, 22, 22),
          actions: [
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                onPressed: () => Navigator.pop(dialogContext),
                style: FilledButton.styleFrom(
                  backgroundColor: _brandRed,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  'Got it',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _ScreenHeader(onBack: () => context.pop()),
                const Padding(
                  padding: EdgeInsets.fromLTRB(22, 12, 22, 20),
                  child: Text(
                    'Choose the customer profile you want to use. You can select only one profile.',
                    style: TextStyle(
                      color: _mutedColor,
                      fontSize: 14,
                      height: 1.45,
                    ),
                  ),
                ),
                Expanded(
                  child: FutureBuilder<List<Customer>>(
                    future: _profilesFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(color: _brandRed),
                        );
                      }

                      if (snapshot.hasError) {
                        return _ProfilesMessage(
                          icon: Icons.cloud_off_outlined,
                          title: 'Unable to load profiles',
                          message:
                              'Please check your connection and try again.',
                          onAction: () => setState(() {
                            _profilesFuture = GeneralRepository()
                                .getCustomersByLoggedInUser();
                            GeneralRepository()
                                .getInsuredPersonByLoggedInUser()
                                .then((value) => _insuredPersons = value);
                          }),
                        );
                      }

                      final profiles = snapshot.data ?? const <Customer>[];
                      if (profiles.isEmpty) {
                        return const _ProfilesMessage(
                          icon: Icons.person_search_outlined,
                          title: 'No profiles found',
                          message: 'There are no customer profiles linked to this account.',
                        );
                      }

                      return ListView.separated(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 22),
                        itemCount: profiles.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 12),
                        itemBuilder: (context, index) {
                          final profile = profiles[index];
                          return _ProfileCard(
                            profile: profile,
                            selected: profile.customerId == _selectedCustomerId,
                            onSelected: () => setState(() {
                              _selectedCustomerId = profile.customerId;
                              _selectedProfile = profile;
                            }),
                          );
                        },
                      );
                    },
                  ),
                ),
                FutureBuilder<List<Customer>>(
                  future: _profilesFuture,
                  builder: (context, snapshot) {
                    final profiles = snapshot.data ?? const <Customer>[];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 16),
                      child: SizedBox(
                        height: 54,
                        child: FilledButton(
                          onPressed:
                              _selectedCustomerId == null || profiles.isEmpty
                              ? null
                              : () => selectCustomerProfile(),
                          style: FilledButton.styleFrom(
                            backgroundColor: _brandRed,
                            disabledBackgroundColor: const Color(0xFFF0F1F3),
                            foregroundColor: Colors.white,
                            disabledForegroundColor: const Color(0xFFB7BBC3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> selectCustomerProfile() async {
    final selected = _selectedProfile;
    if (selected == null) return;
    var encoder = const JsonEncoder.withIndent('  ');
    // String prettyString = encoder.convert(_selectedProfile);

    final matchInsuredPerson = getMatchInsuredPerson();

    if (isProfileComplete(selected)) {
      await markProfileAsSelected(selected, matchInsuredPerson);
    } else {
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Incomplete profile'),
          content: const Text('Kindly update your profile to continue.'),
          actions: [
            TextButton(
              onPressed: () => context.go('/profile/edit'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  Future<void> markProfileAsSelected(Customer customer, dynamic person) async {

    final customerJson = Map<String, dynamic>.from(
      standardSerializers.serializeWith(Customer.serializer, customer) as Map,
    );
    final personJson = person is InsuredPersonResponse
        ? Map<String, dynamic>.from(
            standardSerializers.serializeWith(
              InsuredPersonResponse.serializer,
              person,
            ) as Map,
          )
        : null;
    final bloc = context.read<GeneralBloc>();
    final updatedMessage = <String, dynamic>{
      ...bloc.state.message,
      'selectedCustomer': customerJson,
      'profile': {'person': personJson, 'customer': customerJson},
    };
    await saveMessage(context, updatedMessage);
    // mark Customer as selected
    // await GeneralRepository().markCustomerAsSelected(customer['customerId']);

    if (mounted) context.go(AppRoutes.lifeProducts);
  }

  bool isProfileComplete(Customer profile) {
    return profile.idDetails?.type == IdDetailsTypeEnum.nimc &&
        profile.idDetails?.number.length == 11;
  }

  Object? getMatchInsuredPerson() {
    var customerName =
        '${_selectedProfile?.firstName} ${_selectedProfile?.lastName}';

    for (final insuredPerson in _insuredPersons!) {
      if (customerName.toLowerCase().contains(
            insuredPerson.firstName.toLowerCase(),
          ) &&
          customerName.toLowerCase().contains(
            insuredPerson.lastName.toLowerCase(),
          ) &&
          DateTime.parse(insuredPerson.dateOfBirth.toString()).isAtSameMomentAs(
            DateTime.parse(_selectedProfile?.dateOfBirth.toString() ?? ''),
          )) {
        print(insuredPerson);
        return insuredPerson;
      }
    }
    return null;
  }
}

class _ScreenHeader extends StatelessWidget {
  const _ScreenHeader({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 20, 0),
      child: Row(
        children: [
          IconButton(
            onPressed: onBack,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: _SelectProfileScreenState._textColor,
              size: 32,
            ),
          ),
          const SizedBox(width: 5),
          const Expanded(
            child: Text(
              'Select a profile',
              style: TextStyle(
                color: _SelectProfileScreenState._textColor,
                fontSize: 23,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({
    required this.profile,
    required this.selected,
    required this.onSelected,
  });

  final Customer profile;
  final bool selected;
  final VoidCallback onSelected;

  String get fullName {
    final name = [
      profile.firstName,
      profile.lastName,
    ].whereType<String>().where((part) => part.trim().isNotEmpty).join(' ');
    return name.isEmpty ? 'Customer profile' : name;
  }

  String get initials {
    final parts = fullName.split(RegExp(r'\s+')).take(2);
    return parts.map((part) => part[0].toUpperCase()).join();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: selected
              ? _SelectProfileScreenState._brandRed
              : const Color(0xFFE7E9ED),
          width: selected ? 1.5 : 1,
        ),
      ),
      child: InkWell(
        onTap: onSelected,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: selected
                    ? const Color(0xFFFFE8E6)
                    : const Color(0xFFF1F2F4),
                child: Text(
                  initials,
                  style: TextStyle(
                    color: selected
                        ? _SelectProfileScreenState._brandRed
                        : _SelectProfileScreenState._mutedColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fullName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _SelectProfileScreenState._textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      profile.phone?.trim().isNotEmpty == true
                          ? profile.phone!
                          : 'Customer ID: ${profile.customerId}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _SelectProfileScreenState._mutedColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              isProfileComplete(profile)
                  ? _InsuranceTag(label: 'Verified', color: Colors.green)
                  : _InsuranceTag(label: 'Pending', color: Colors.orange),
              Icon(
                selected
                    ? Icons.radio_button_checked_rounded
                    : Icons.radio_button_unchecked_rounded,
                color: selected
                    ? _SelectProfileScreenState._brandRed
                    : const Color(0xFFB8BCC5),
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isProfileComplete(Customer profile) {
    return profile.idDetails?.type == IdDetailsTypeEnum.nimc &&
        profile.idDetails?.number.length == 11;
  }
}

class _InsuranceTag extends StatelessWidget {
  const _InsuranceTag({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: color,
          fontSize: 8,
          height: 1.1,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class _ProfilesMessage extends StatelessWidget {
  const _ProfilesMessage({
    required this.icon,
    required this.title,
    required this.message,
    this.onAction,
  });

  final IconData icon;
  final String title;
  final String message;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: const Color(0xFFB5B9C1), size: 52),
            const SizedBox(height: 14),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: _SelectProfileScreenState._textColor,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: _SelectProfileScreenState._mutedColor,
                fontSize: 13,
                height: 1.4,
              ),
            ),
            if (onAction != null) ...[
              const SizedBox(height: 16),
              TextButton(onPressed: onAction, child: const Text('Try again')),
            ],
          ],
        ),
      ),
    );
  }
}
