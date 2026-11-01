import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _pageColor = AppColors.backgroundColor;

  bool _directDebitEnabled = false;
  bool _biometricEnabled = true;

  @override
  Widget build(BuildContext context) {
    final message = context.select<GeneralBloc, Map<String, dynamic>>(
      (bloc) => bloc.state.message,
    );
    final profile = _profileFrom(message);
    final user = _mapFrom(message['user']);
    final policies = message['policies'];
    final claims = message['claims'];

    final name = _profileName(profile, user);
    final email = _firstText([
      profile['email'],
      user['email'],
      user['username'],
    ], fallback: 'Email not provided');
    final phone = _firstText([
      profile['phone'],
      user['phone'],
    ], fallback: 'Phone number not provided');
    final verified = _isKycVerified(profile);
    final activePolicies = _activeCount(policies);
    final openClaims = _openCount(claims);
    final memberSince = _memberSince(profile, user);

    return Scaffold(
      backgroundColor: _pageColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _ProfileHero(
                    name: name,
                    email: email,
                    phone: phone,
                    verified: verified,
                    activePolicies: activePolicies,
                    openClaims: openClaims,
                    memberSince: memberSince,
                    onNotifications: () => _showComingSoon('Notifications'),
                    onEditPhoto: () => _showComingSoon('Profile photo'),
                  ),
                  _ProfileSection(
                    title: 'Account',
                    children: [
                      _ProfileMenuTile(
                        icon: Icons.person_outline_rounded,
                        label: 'Account Details',
                        onTap: () => _showComingSoon('Account details'),
                      ),
                      _ProfileMenuTile(
                        icon: Icons.badge_outlined,
                        label: 'KYC Status',
                        trailing: verified
                            ? const _StatusLabel(label: 'Verified')
                            : null,
                        onTap: () => _showComingSoon('KYC status'),
                      ),
                      _ProfileMenuTile(
                        icon: Icons.credit_card_outlined,
                        label: 'Enable Direct Debit',
                        trailing: Switch.adaptive(
                          value: _directDebitEnabled,
                          activeTrackColor: _brandRed,
                          onChanged: (value) {
                            setState(() => _directDebitEnabled = value);
                          },
                        ),
                      ),
                      _ProfileMenuTile(
                        icon: Icons.notifications_none_rounded,
                        label: 'Notifications',
                        onTap: () => _showComingSoon('Notifications'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  _ProfileSection(
                    title: 'Security',
                    children: [
                      _ProfileMenuTile(
                        icon: Icons.lock_outline_rounded,
                        label: 'Change Password',
                        onTap: () => _showComingSoon('Change password'),
                      ),
                      _ProfileMenuTile(
                        icon: Icons.fingerprint_rounded,
                        label: 'Biometric login',
                        subtitle: 'Use Face ID to sign in',
                        trailing: Switch.adaptive(
                          value: _biometricEnabled,
                          activeTrackColor: _brandRed,
                          onChanged: (value) {
                            setState(() => _biometricEnabled = value);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  _ProfileSection(
                    title: 'App',
                    children: [
                      _ProfileMenuTile(
                        icon: Icons.privacy_tip_outlined,
                        label: 'Privacy Policy',
                        onTap: () => _showComingSoon('Privacy policy'),
                      ),
                      _ProfileMenuTile(
                        icon: Icons.info_outline_rounded,
                        label: 'About SimpleLife',
                        onTap: () => _showComingSoon('About SimpleLife'),
                      ),
                      _ProfileMenuTile(
                        icon: Icons.star_border_rounded,
                        label: 'Rate SimpleLife',
                        onTap: () => _showComingSoon('Rate SimpleLife'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showComingSoon(String feature) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$feature is coming soon.')));
  }

  Map<String, dynamic> _profileFrom(Map<String, dynamic> message) {
    final profile = _mapFrom(message['profile']);
    final customer = _mapFrom(profile['customer']);
    if (customer.isNotEmpty) return customer;
    return _mapFrom(message['selectedCustomer']);
  }

  Map<String, dynamic> _mapFrom(dynamic value) {
    if (value is! Map) return const {};
    return Map<String, dynamic>.from(value);
  }

  String _profileName(Map<String, dynamic> profile, Map<String, dynamic> user) {
    final firstName = _text(profile['firstName']);
    final lastName = _text(profile['lastName']);
    final customerName = '$firstName $lastName'.trim();
    if (customerName.isNotEmpty) return customerName;
    return _firstText([user['name']], fallback: 'Customer');
  }

  String _firstText(List<dynamic> values, {required String fallback}) {
    for (final value in values) {
      final text = _text(value);
      if (text.isNotEmpty) return text;
    }
    return fallback;
  }

  String _text(dynamic value) => value?.toString().trim() ?? '';

  bool _isKycVerified(Map<String, dynamic> profile) {
    final idDetails = _mapFrom(profile['idDetails']);
    return _text(idDetails['type']).isNotEmpty &&
        _text(idDetails['number']).isNotEmpty;
  }

  int _activeCount(dynamic value) {
    if (value is! List) return 0;
    return value.where((item) {
      if (item is! Map) return false;
      return _text(item['status']).toLowerCase() == 'active';
    }).length;
  }

  int _openCount(dynamic value) {
    if (value is! List) return 0;
    return value.where((item) {
      if (item is! Map) return false;
      final status = _text(item['status']).toLowerCase();
      return status == 'open' || status == 'pending';
    }).length;
  }

  String _memberSince(Map<String, dynamic> profile, Map<String, dynamic> user) {
    final raw = _firstText([
      profile['createdAt'],
      profile['created_at'],
      user['createdAt'],
      user['created_at'],
    ], fallback: '');
    final date = DateTime.tryParse(raw);
    return date?.year.toString() ?? DateTime.now().year.toString();
  }
}

class _ProfileHero extends StatelessWidget {
  const _ProfileHero({
    required this.name,
    required this.email,
    required this.phone,
    required this.verified,
    required this.activePolicies,
    required this.openClaims,
    required this.memberSince,
    required this.onNotifications,
    required this.onEditPhoto,
  });

  final String name;
  final String email;
  final String phone;
  final bool verified;
  final int activePolicies;
  final int openClaims;
  final String memberSince;
  final VoidCallback onNotifications;
  final VoidCallback onEditPhoto;

  String get initials {
    final parts = name
        .split(RegExp(r'\s+'))
        .where((part) => part.isNotEmpty)
        .take(2);
    final value = parts.map((part) => part[0].toUpperCase()).join();
    return value.isEmpty ? 'SL' : value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 335,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 245,
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            decoration: const BoxDecoration(
              color: _ProfileScreenState._brandRed,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.3,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: onNotifications,
                      customBorder: const CircleBorder(),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.18),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.notifications_none_rounded,
                              color: Colors.white,
                              size: 23,
                            ),
                          ),
                          Positioned(
                            top: 1,
                            right: 1,
                            child: Container(
                              width: 9,
                              height: 9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: _ProfileScreenState._brandRed,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFE9E7),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: Text(
                            initials,
                            style: const TextStyle(
                              color: _ProfileScreenState._brandRed,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          right: -3,
                          bottom: -2,
                          child: InkWell(
                            onTap: onEditPhoto,
                            customBorder: const CircleBorder(),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xFFFFD1CE),
                                ),
                              ),
                              child: const Icon(
                                Icons.photo_camera_outlined,
                                color: _ProfileScreenState._brandRed,
                                size: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            email,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.86),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            phone,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.86),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 190,
            child: _ProfileSummaryCard(
              verified: verified,
              activePolicies: activePolicies,
              openClaims: openClaims,
              memberSince: memberSince,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileSummaryCard extends StatelessWidget {
  const _ProfileSummaryCard({
    required this.verified,
    required this.activePolicies,
    required this.openClaims,
    required this.memberSince,
  });

  final bool verified;
  final int activePolicies;
  final int openClaims;
  final String memberSince;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(21),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 22,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 15, 16, 13),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Profile strength',
                        style: TextStyle(
                          color: _ProfileScreenState._mutedColor,
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        verified ? 'All set up' : 'Almost there',
                        style: const TextStyle(
                          color: _ProfileScreenState._textColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: verified
                        ? const Color(0xFFE9F8F1)
                        : const Color(0xFFFFF3DB),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        verified
                            ? Icons.verified_user_outlined
                            : Icons.schedule_rounded,
                        color: verified
                            ? const Color(0xFF21A56F)
                            : const Color(0xFFC78308),
                        size: 14,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        verified ? 'KYC verified' : 'KYC pending',
                        style: TextStyle(
                          color: verified
                              ? const Color(0xFF21855F)
                              : const Color(0xFFA46A00),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFF0F1F3)),
          SizedBox(
            height: 64,
            child: Row(
              children: [
                Expanded(
                  child: _ProfileStat(
                    value: '$activePolicies',
                    label: 'Active policies',
                  ),
                ),
                const _VerticalDivider(),
                Expanded(
                  child: _ProfileStat(
                    value: '$openClaims',
                    label: 'Open claims',
                  ),
                ),
                const _VerticalDivider(),
                Expanded(
                  child: _ProfileStat(
                    value: memberSince,
                    label: 'Member since',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileStat extends StatelessWidget {
  const _ProfileStat({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: _ProfileScreenState._textColor,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: _ProfileScreenState._mutedColor,
            fontSize: 9,
          ),
        ),
      ],
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider();

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 30, color: const Color(0xFFF0F1F3));
  }
}

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2, bottom: 10),
            child: Text(
              title,
              style: const TextStyle(
                color: _ProfileScreenState._textColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFEDEEF1)),
            ),
            child: Column(
              children: [
                for (var index = 0; index < children.length; index++) ...[
                  children[index],
                  if (index != children.length - 1)
                    const Divider(
                      height: 1,
                      indent: 58,
                      color: Color(0xFFF0F1F3),
                    ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileMenuTile extends StatelessWidget {
  const _ProfileMenuTile({
    required this.icon,
    required this.label,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 11, 9, 11),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF0EF),
                borderRadius: BorderRadius.circular(11),
              ),
              child: Icon(icon, color: _ProfileScreenState._brandRed, size: 18),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      color: _ProfileScreenState._textColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 3),
                    Text(
                      subtitle!,
                      style: const TextStyle(
                        color: _ProfileScreenState._mutedColor,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null)
              trailing!
            else
              const Icon(
                Icons.chevron_right_rounded,
                color: Color(0xFFB8BBC2),
                size: 21,
              ),
          ],
        ),
      ),
    );
  }
}

class _StatusLabel extends StatelessWidget {
  const _StatusLabel({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFE9F8F1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF21855F),
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
