import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/utils/utils.dart';
import 'package:uuid/uuid.dart';

import '../Bloc__state/general_bloc.dart';
import '../widgets/text_field.dart';

class RegisterProtecteeScreen extends StatefulWidget {
  const RegisterProtecteeScreen({super.key});

  @override
  State<RegisterProtecteeScreen> createState() =>
      _RegisterProtecteeScreenState();
}

class _RegisterProtecteeScreenState extends State<RegisterProtecteeScreen> {
  static const _brandRed = AppColors.primary;
  static const _textColor = AppColors.textColor;
  static const _mutedColor = AppColors.mutedColor;
  static const _fieldBorderColor = AppColors.textColor;

  final _formKey = GlobalKey<FormState>();
  final _registrationController = TextEditingController();
  final _makeController = TextEditingController();
  final _modelController = TextEditingController();
  final _chassisController = TextEditingController();
  final _engineController = TextEditingController();
  final _yearController = TextEditingController();

  String? _buildingMaterial;
  String? _type;
  String? _value;

  bool _isSubmitting = false;
  Map<String, dynamic> message = {};

  late final TextEditingController _buildingAddressController;
  late final TextEditingController _buildingValueController;

  String? _buildingType;
  String? _use;

  final Set<BuildingItem> _buildingItems = {};

  TextEditingController? _otherCategoryController;

  String? _category;

  @override
  void initState() {
    super.initState();
    _buildingAddressController = TextEditingController();
    _buildingValueController = TextEditingController();
    message = Map<String, dynamic>.from(
      context.read<GeneralBloc>().state.message,
    );
    final quote = message['policy']?['quote'];
    print('jjjs jj jdj$quote');
  }

  @override
  void dispose() {
    _registrationController.dispose();
    _makeController.dispose();
    _modelController.dispose();
    _chassisController.dispose();
    _engineController.dispose();
    _yearController.dispose();
    _buildingAddressController.dispose();
    super.dispose();
  }

  Future<void> _proceed() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (_quoteValueKey('stationaryValue') != null) {
      if (calculateTotalStationaryItems() <
          (double.tryParse(message['policy']?['quote']?['stationaryValue'])!)) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                "You have ${(double.tryParse(message['policy']?['quote']?['stationaryValue']) ?? 0) - calculateTotalStationaryItems()}  of undeclared stationary items",
              ),
            ),
          );
        return;
      }
    } else if (_quoteValueKey('mobileValue') != null) {
      if (calculateTotalMobileItems() <
          (double.tryParse(message['policy']?['quote']?['mobileValue']) ?? 0)) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                "You have ${(double.tryParse(message['policy']?['quote']?['mobileValue']) ?? 0) - calculateTotalMobileItems()}  of undeclared mobile items",
              ),
            ),
          );
        return;
      }
    }

    setState(() => _isSubmitting = true);
    print(
      '${_buildingAddressController.text} $_buildingType $_buildingMaterial',
    );
    final xId = const Uuid().v4();
    final quote = message['policy']?['quote'];
    if (BusinessProtectPolicies.contains(message['policy']['type'])) {
      message['policy']['quote']['category'] =
          _category == SEGMENTS.others.value
          ? _otherCategoryController?.text.trim()
          : _category;
    }
    if (!mounted) return;
    try {
      createInsurer({
            'xId': xId,
            'type': message['policy']['type'],
            'owner':
                '${message['profile']?['customer']['firstName']} ${message['profile']?['customer']['lastName']}',
            'category': message['policy']['quote']['category'],
            'buildingType': _buildingType,
            'buildingMaterial': _buildingMaterial,
            'buildingValue':
                message['policy']['quote']['buildingValue']
                    .toString()
                    .trim()
                    .isNotEmpty
                ? message['policy']['quote']['buildingValue'].toString().trim()
                : '0',
            'address': _buildingAddressController.text.trim(),
          })
          ?.then((onValue) {
            message['policy']['document'] = {'documentId': const Uuid().v4()};
            message['policy']['insured'] = {'xId': xId};
            message['policy']['insuredItems'] = _buildingItems
                .map((e) => e.toMap())
                .toList();
            saveMessage(context, message);
          })
          .then((onValue) {
            createGeneralDocument(context)?.then((onValue) {
              addInterestToDocument(context).then((onValue) {
                addInsuredItems(context).then((onValue) {
                  addCustomerToGeneralDocucment(context).then((onValue) {
                    context.push(AppRoutes.generalPolicySummary);
                  });
                });
              });
            });
          });

      await saveMessage(context, message);
      if (!mounted) return;
    } catch (error) {
      debugPrint('$error');
      if (!mounted) return;
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              apiErrorMessage(
                error,
                fallback: 'Could not save vehicle details. Please try again.',
              ),
            ),
          ),
        );
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 620),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(26, 12, 26, 24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _PageHeading(onBack: () => context.pop()),
                          const SizedBox(height: 17),
                          // _FieldLabel('Building  in Naira?'),
                          // const SizedBox(height: 11),
                          // field(
                          //   'building_value',
                          //   'Building in Naira',
                          //   controller: _buildingValueController,
                          //   keyboardType: TextInputType.number,
                          //   validator: (v) => (v == null || v.trim().isEmpty)
                          //       ? 'Enter building in Naira'
                          //       : null,
                          // ),
                          // const SizedBox(height: 14),
                          if (HomeOwnerPolicies.contains(
                            message['policy']['type'],
                          )) ...[
                            _FieldLabel('What building material was used?'),
                            const SizedBox(height: 11),
                            _FormDropdown(
                              value: _buildingMaterial,
                              hint: 'Please select your building material',
                              items: const [
                                {'value': "concrete", 'label': 'Concrete'},
                                {'value': "clay", 'label': 'Clay'},
                                {'value': 'wood', 'label': 'Wood'},
                              ],
                              onChanged: (value) => setState(() {
                                _buildingMaterial = value;
                              }),
                              validator: (v) =>
                                  v == null ? 'Select building material' : null,
                            ),
                            const SizedBox(height: 14),
                            _FieldLabel('Building Type?'),
                            const SizedBox(height: 11),
                            _FormDropdown(
                              value: _buildingType,
                              hint: 'Select building type',
                              items: const [
                                {'value': 'bungalow', 'label': 'Bungalow'},
                                {'value': 'duplex', 'label': 'Duplex'},
                                {'value': 'warehouse', 'label': 'Warehouse'},
                                {
                                  'value': 'multiStorey',
                                  'label': 'Multi-storey',
                                },
                                {'value': 'flat', 'label': 'Flat'},
                              ],
                              onChanged: (value) =>
                                  setState(() => _buildingType = value),
                              validator: (v) =>
                                  v == null ? 'Select Building type' : null,
                            ),
                          ],
                          const SizedBox(height: 14),
                          if (BusinessProtectPolicies.contains(
                            message['policy']['type'],
                          )) ...[
                            _FieldLabel('Business category'),
                            const SizedBox(height: 11),
                            _FormDropdown(
                              value: _category,
                              hint: 'Select business category',
                              items: segmentDropdownItems,
                              onChanged: (value) => setState(() {
                                _category = value;
                                if (value != SEGMENTS.others.value) {
                                  _otherCategoryController?.clear();
                                }
                              }),
                            ),
                            if (_category == SEGMENTS.others.value) ...[
                              const SizedBox(height: 14),
                              _FieldLabel('Enter your business category'),
                              const SizedBox(height: 11),
                              field(
                                'building_value',
                                'Business category',
                                controller: _otherCategoryController,
                                validator: (v) =>
                                    (v == null || v.trim().isEmpty)
                                    ? 'Enter business category'
                                    : null,
                              ),
                            ],
                            const SizedBox(height: 14),
                          ],
                          _FieldLabel('Building Address?'),
                          const SizedBox(height: 11),
                          field(
                            'buiding_ddress',
                            'Building Address',
                            controller: _buildingAddressController,
                            maxLines: 3,
                            minLines: 1,
                          ),
                          if (_buildingItems.isEmpty) ...[
                            Center(
                              child: OutlinedButton.icon(
                                onPressed: () =>
                                    _addItems(message['policy']['type']),
                                icon: const Icon(Icons.add),
                                label: const Text(
                                  'Declare Items in the Building',
                                ),
                              ),
                            ),
                          ],
                          if (_buildingItems.isNotEmpty) ...[
                            _BuildingItemsList(
                              items: _buildingItems.toList(),
                              onEdit: (item) => _editBuildingItem(
                                item,
                                message['policy']['type'],
                              ),
                              onRemove: _removeBuildingItem,
                              confirmRemove: _confirmRemoveBuildingItem,
                              addNewItem: () =>
                                  _addItems(message['policy']['type']),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(26, 12, 26, 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: FilledButton(
                            onPressed: _isSubmitting ? null : _proceed,
                            style: FilledButton.styleFrom(
                              backgroundColor: _brandRed,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: _isSubmitting
                                ? const SizedBox.square(
                                    dimension: 22,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.4,
                                      color: Colors.white,
                                    ),
                                  )
                                : const Text(
                                    'Proceed',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void createMotorPolicyDocument(BuildContext context) {
    message['policy']['document'] = {'documentId': const Uuid().v4()};
    saveMessage(context, message);
    createMotorDocument(context)?.then((onValue) {
      addMotorToDocument(context).then((onValue) {
        addCustomerToGeneralDocucment(context).then((onValue) {
          context.push(AppRoutes.motorPolicySummary);
        });
      });
    });
  }

  Future<void> _addItems(String? policyType) async {
    await _openBuildingItemSheet(policyType: policyType);
  }

  Future<void> _openBuildingItemSheet({
    BuildingItem? existing,
    String? policyType,
  }) async {
    final item = await showModalBottomSheet<BuildingItem>(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withValues(alpha: 0.48),
      builder: (sheetContext) =>
          _BuildingItemFormSheet(existing: existing, policyType: policyType),
    );

    if (!mounted || item == null) return;

    final isEdit = existing != null;
    final withoutCurrent = Set<BuildingItem>.from(_buildingItems);
    if (isEdit) {
      withoutCurrent.remove(existing);
    }
    if (withoutCurrent.contains(item)) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(content: Text('This item has already been added.')),
        );
      return;
    }

    if (item.itemType == 'mobileItem') {
      final mobileQuote = _quoteValueKey('mobileValue');
      if (mobileQuote != null) {
        final cap = double.tryParse(mobileQuote) ?? 0;
        if (calculateTotalMobileItems(item) > cap) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  'Value entered has exceeded the total estimated mobile items $cap',
                ),
              ),
            );
          return;
        }

        final remaining = cap - calculateTotalMobileItems(item);
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text('You have $remaining of undeclared mobile items'),
            ),
          );
      }
    } else if (item.itemType == 'stationaryItem') {
      final stationaryQuote = _quoteValueKey('stationaryValue');
      if (stationaryQuote != null) {
        final cap = double.tryParse(stationaryQuote) ?? 0;
        if (calculateTotalStationaryItems(item) > cap) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  'Value entered has exceeded the total estimated stationary items $cap',
                ),
              ),
            );
          return;
        }
        final remaining = cap - calculateTotalStationaryItems(item);
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                'You have $remaining of undeclared stationary items',
              ),
            ),
          );
      }
    }

    setState(() {
      if (isEdit) {
        _buildingItems.remove(existing);
      }
      _buildingItems.add(item);
    });
  }

  Future<void> _editBuildingItem(BuildingItem item, String? policyType) async {
    await _openBuildingItemSheet(existing: item, policyType: policyType);
  }

  void _removeBuildingItem(BuildingItem item) {
    setState(() => _buildingItems.remove(item));
  }

  Future<bool> _confirmRemoveBuildingItem() async {
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        icon: Container(
          width: 52,
          height: 52,
          decoration: const BoxDecoration(
            color: Color(0xFFFFECEB),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.delete_outline_rounded, color: _brandRed),
        ),
        title: const Text(
          'Remove item?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _textColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        content: const Text(
          'Are you sure you want to remove this item from the building?',
          textAlign: TextAlign.center,
          style: TextStyle(color: _mutedColor, fontSize: 14, height: 1.5),
        ),
        actionsPadding: const EdgeInsets.fromLTRB(22, 4, 22, 22),
        actions: [
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(dialogContext, false),
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton(
                  onPressed: () => Navigator.pop(dialogContext, true),
                  style: FilledButton.styleFrom(backgroundColor: _brandRed),
                  child: const Text('Remove'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    return shouldDelete ?? false;
  }

  Future<void>? createInsurer(Map<String, dynamic> param0) {
    if (HomeOwnerPolicies.contains(param0['type'])) {
      return GeneralRepository().addOwner({
        'ownerId': param0['xId'],
        'owner': param0['owner'],
        'buildingType': param0['buildingType'],
        'material': param0['buildingMaterial'],
        'value': param0['buildingValue'],
        'addressLine': param0['address'],
      });
    } else if ([...TenantProtectPolicies,...BusinessProtectPolicies].contains(param0['type'])) {
      return GeneralRepository().createRenter({
        'ownerId': param0['xId'],
        'owner': param0['owner'],
        'category': param0['category'],
        'addressLine': param0['address'],
      });
    }
  }

  String? _quoteValueKey(String key) {
    final raw = message['policy']?['quote']?[key];
    if (raw == null) return null;
    final text = raw.toString().trim();
    return text.isEmpty ? null : text;
  }

  static double _itemValueAsAmount(String raw) =>
      double.tryParse(raw.replaceAll(',', '').trim()) ?? 0;

  double calculateTotalStationaryItems([BuildingItem? item]) {
    if (item != null) {
      return _buildingItems
              .where((item) => item.itemType == 'stationaryItem')
              .fold(
                0.0,
                (sum, item) => sum + _itemValueAsAmount(item.itemValue),
              ) +
          _itemValueAsAmount(item.itemValue);
    } else {
      return _buildingItems
          .where((item) => item.itemType == 'stationaryItem')
          .fold(0.0, (sum, item) => sum + _itemValueAsAmount(item.itemValue));
    }
  }

  double calculateTotalMobileItems([BuildingItem? item]) {
    if (item != null) {
      return _buildingItems
              .where((item) => item.itemType == 'mobileItem')
              .fold(
                0.0,
                (sum, item) => sum + _itemValueAsAmount(item.itemValue),
              ) +
          _itemValueAsAmount(item.itemValue);
    } else {
      return _buildingItems
          .where((item) => item.itemType == 'mobileItem')
          .fold(0.0, (sum, item) => sum + _itemValueAsAmount(item.itemValue));
    }
  }
}

class BuildingItem {
  BuildingItem({
    required this.itemType,
    required this.itemValue,
    required this.itemName,
    required this.itemsQty,
  });

  final String itemType;
  final String itemValue;
  final String itemName;
  final String itemsQty;
  String itemId = Uuid().v4();

  String get typeLabel =>
      itemType == 'mobileItem' ? 'Mobile item' : 'Stationary item';

  Map<String, dynamic> toMap() => {
    'itemType': itemType,
    'itemValue': itemValue,
    'itemName': itemName,
    'itemsQty': itemsQty,
    'itemId': itemId,
  };

  factory BuildingItem.fromMap(Map<String, dynamic> map) {
    final item = BuildingItem(
      itemType: map['itemType'] as String,
      itemValue: map['itemValue'] as String,
      itemName: map['itemName'] as String,
      itemsQty: map['itemsQty'] as String,
    );
    final id = map['itemId'];
    if (id is String && id.isNotEmpty) {
      item.itemId = id;
    }
    return item;
  }

  @override
  bool operator ==(Object other) {
    return other is BuildingItem &&
        itemType == other.itemType &&
        itemValue == other.itemValue &&
        itemName == other.itemName &&
        itemsQty == other.itemsQty;
  }

  @override
  int get hashCode => Object.hash(itemType, itemValue, itemName, itemsQty);
}

class _BuildingItemsList extends StatelessWidget {
  const _BuildingItemsList({
    required this.items,
    required this.onEdit,
    required this.onRemove,
    required this.confirmRemove,
    required this.addNewItem,
  });

  final List<BuildingItem> items;
  final ValueChanged<BuildingItem> onEdit;
  final ValueChanged<BuildingItem> onRemove;
  final Future<bool> Function() confirmRemove;
  final Function() addNewItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Items in the building',
              style: TextStyle(
                color: _RegisterProtecteeScreenState._mutedColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: addNewItem,
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primary,
                backgroundColor: const Color(0xFFFFECEB),
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 9,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              icon: const Icon(Icons.add_rounded, size: 19),
              label: const Text(
                'Add More',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        for (final item in items)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: Dismissible(
                key: ValueKey(item),
                direction: DismissDirection.horizontal,
                secondaryBackground: Container(
                  color: _RegisterProtecteeScreenState._brandRed,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 25),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Remove',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                background: Container(
                  color: Colors.amber.shade700,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 25),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit_attributes_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                confirmDismiss: (direction) async {
                  if (direction == DismissDirection.endToStart) {
                    return confirmRemove();
                  }
                  if (direction == DismissDirection.startToEnd) {
                    onEdit(item);
                    return false;
                  }
                  return false;
                },
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    onRemove(item);
                  }
                },
                child: _BuildingItemRow(
                  item: item,
                  onEdit: () => onEdit(item),
                  onRemove: () async {
                    if (await confirmRemove()) {
                      onRemove(item);
                    }
                  },
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _BuildingItemRow extends StatelessWidget {
  const _BuildingItemRow({
    required this.item,
    required this.onEdit,
    required this.onRemove,
  });

  final BuildingItem item;
  final VoidCallback onEdit;
  final Future<void> Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 14, 7, 14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Color(0xFFFFFAF9)],
        ),
        border: Border.all(color: const Color(0xFFE7E8EC)),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.itemName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: _RegisterProtecteeScreenState._textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${item.typeLabel} · Qty ${item.itemsQty} · ₦${item.itemValue}',
                  style: const TextStyle(
                    color: _RegisterProtecteeScreenState._mutedColor,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          PopupMenuButton<String>(
            tooltip: 'Item options',
            color: Colors.white,
            onSelected: (value) async {
              if (value == 'remove') {
                await onRemove();
              } else if (value == 'edit') {
                onEdit();
              }
            },
            itemBuilder: (_) => const [
              PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: [
                    Icon(Icons.edit_attributes, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Edit'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'remove',
                child: Row(
                  children: [
                    Icon(Icons.delete_outline_rounded, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Remove'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BuildingItemFormSheet extends StatefulWidget {
  const _BuildingItemFormSheet({this.existing, this.policyType});

  final BuildingItem? existing;
  final String? policyType;

  @override
  State<_BuildingItemFormSheet> createState() => _BuildingItemFormSheetState();
}

class _BuildingItemFormSheetState extends State<_BuildingItemFormSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _valueController;
  late final TextEditingController _nameController;
  late final TextEditingController _qtyController;
  String? _itemType;

  bool get _isEdit => widget.existing != null;

  bool get _includeMobileItemType {
    final policyType = widget.policyType;
    if (policyType == null) return true;
    return !BusinessProtectPolicies.contains(policyType);
  }

  List<Map<String, String>> get _itemTypeOptions {
    final showMobile =
        _includeMobileItemType || widget.existing?.itemType == 'mobileItem';
    return [
      if (showMobile) const {'value': 'mobileItem', 'label': 'Mobile item'},
      const {'value': 'stationaryItem', 'label': 'Stationary item'},
    ];
  }

  @override
  void initState() {
    super.initState();
    final existing = widget.existing;
    _valueController = TextEditingController(text: existing?.itemValue ?? '');
    _nameController = TextEditingController(text: existing?.itemName ?? '');
    _qtyController = TextEditingController(text: existing?.itemsQty ?? '');
    _itemType = existing?.itemType;
  }

  @override
  void dispose() {
    _valueController.dispose();
    _nameController.dispose();
    _qtyController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (_itemType == null) return;

    Navigator.of(context).pop(
      BuildingItem(
        itemType: _itemType!,
        itemValue: _valueController.text.trim(),
        itemName: _nameController.text.trim(),
        itemsQty: _qtyController.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 620),
          child: Material(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            clipBehavior: Clip.antiAlias,
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                22,
                12,
                22,
                16 + MediaQuery.paddingOf(context).bottom,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Container(
                        width: 42,
                        height: 4,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA4A8B1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      _isEdit ? 'Edit item' : 'Add item',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: _RegisterProtecteeScreenState._textColor,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const _FieldLabel('Item type'),
                    const SizedBox(height: 8),
                    _FormDropdown(
                      key: ValueKey(_itemType),
                      value: _itemType,
                      hint: 'Select type',
                      items: _itemTypeOptions,
                      onChanged: (v) => setState(() => _itemType = v),
                      validator: (v) => v == null ? 'Select item type' : null,
                    ),
                    const SizedBox(height: 12),
                    const _FieldLabel('Item total value'),
                    const SizedBox(height: 8),
                    _MotorTextField(
                      controller: _valueController,
                      hintText: 'Value in Naira',
                      keyboardType: TextInputType.number,
                      validator: (v) {
                        if (v == null || v.trim().isEmpty) {
                          return 'Enter value';
                        }
                        if (num.tryParse(v.trim()) == null) {
                          return 'Enter a valid number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    const _FieldLabel('Item name'),
                    const SizedBox(height: 8),
                    _MotorTextField(
                      controller: _nameController,
                      hintText: 'Item name',
                      validator: (v) => (v == null || v.trim().isEmpty)
                          ? 'Enter item name'
                          : null,
                    ),
                    const SizedBox(height: 12),
                    const _FieldLabel('Quantity'),
                    const SizedBox(height: 8),
                    _MotorTextField(
                      controller: _qtyController,
                      hintText: 'Qty',
                      keyboardType: TextInputType.number,
                      validator: (v) {
                        if (v == null || v.trim().isEmpty) {
                          return 'Enter quantity';
                        }
                        final n = int.tryParse(v.trim());
                        if (n == null || n < 1) {
                          return 'Enter a valid quantity';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            style: OutlinedButton.styleFrom(
                              foregroundColor:
                                  _RegisterProtecteeScreenState._brandRed,
                              side: const BorderSide(
                                color: _RegisterProtecteeScreenState._brandRed,
                              ),
                              minimumSize: const Size(0, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text('Cancel'),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: FilledButton(
                            onPressed: _submit,
                            style: FilledButton.styleFrom(
                              backgroundColor:
                                  _RegisterProtecteeScreenState._brandRed,
                              minimumSize: const Size(0, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(_isEdit ? 'Save' : 'Add'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PageHeading extends StatelessWidget {
  const _PageHeading({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-10, -5),
          child: IconButton(
            onPressed: onBack,
            visualDensity: VisualDensity.compact,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: _RegisterProtecteeScreenState._textColor,
              size: 25,
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Insurance Details',
            style: TextStyle(
              color: _RegisterProtecteeScreenState._textColor,
              fontSize: 20,
              height: 1.2,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.2,
            ),
          ),
        ),
      ],
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: _RegisterProtecteeScreenState._mutedColor,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _MotorTextField extends StatelessWidget {
  const _MotorTextField({
    required this.controller,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.prefixIcon,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: _RegisterProtecteeScreenState._fieldBorderColor,
      ),
    );

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      style: const TextStyle(
        color: _RegisterProtecteeScreenState._mutedColor,
        fontSize: 12,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: _RegisterProtecteeScreenState._mutedColor,
          fontSize: 12,
        ),
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 12,
        ),
        border: border,
        enabledBorder: border,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: _RegisterProtecteeScreenState._brandRed,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: _RegisterProtecteeScreenState._brandRed,
          ),
        ),
      ),
      validator: validator,
    );
  }
}

class _FormDropdown extends StatelessWidget {
  const _FormDropdown({
    super.key,
    required this.value,
    required this.hint,
    required this.items,
    required this.onChanged,
    this.validator,
  });

  final String? value;
  final String hint;
  final List<Map<String, dynamic>> items;
  final ValueChanged<String?> onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: _RegisterProtecteeScreenState._fieldBorderColor,
      ),
    );

    return DropdownButtonFormField<String>(
      initialValue: value,
      isExpanded: true,
      hint: Text(hint),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
        border: border,
        enabledBorder: border,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: _RegisterProtecteeScreenState._brandRed,
          ),
        ),
      ),
      style: const TextStyle(
        color: _RegisterProtecteeScreenState._textColor,
        fontSize: 12,
      ),
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: _RegisterProtecteeScreenState._mutedColor,
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item['value'],
              child: Text(item['label']!),
            ),
          )
          .toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
