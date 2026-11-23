import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/utils/utils.dart';

class GetQuoteProductDetailsScreen extends StatefulWidget {
  const GetQuoteProductDetailsScreen({
    required this.id,
    required this.productIcon,
    super.key,
  });

  final String id;
  final String productIcon;

  @override
  State<GetQuoteProductDetailsScreen> createState() =>
      _GetQuoteProductDetailsScreenState();
}

class _GetQuoteProductDetailsScreenState
    extends State<GetQuoteProductDetailsScreen> {
  static const _textColor = Color(0xFF515258);
  static const _mutedColor = Color(0xFF858B98);
  static const _borderColor = Color(0xFFE4E5E9);
  static const _dividerColor = Color(0xFFFFEEEE);

  // var _plans  = [];
  dynamic get _plans {
    print(productList[widget.id]);
    print("productList[widget.id]");

    return productList[widget.id];
  }

  static const _motorPlans = [
    _QuoteResult(
      title: 'Flexi Motor Insurance',
      subtitle: 'Most popular',
      isMenu: true,
    ),
    _QuoteResult(title: 'Comprehensive Motor', subtitle: 'Full cover'),
    _QuoteResult(title: 'Heirs Third party', subtitle: 'Basic legal cover'),
    _QuoteResult(title: 'Her Motor', subtitle: 'Basic legal cover'),
  ];

  static const _flexiOptions = [
    'Heirs Motor Flexi 70k',
    'Heirs Motor Flexi 35K',
    'Heirs Motor Flexi 25K',
  ];

  String? _selectedFlexiOption;
  Map<String, dynamic> productList = {
    '1': MotorPolicy,
    '2': HomeOwnerPolicy,
    '3': ProtectionPolicy,
    '4': SmePolicy,
    '5': {},
    '6': TenantPolicy,
    '7': FireTheftPolicy,
    '8': PersonalAccidentPolicy,
    '9': {...SavingsPolicy, ...EndowmentPolicy},
  };

  String get _subject {
    return switch (widget.id) {
      '1' => 'car',
      '2' => 'property',
      '3' => 'family',
      '4' => 'business',
      '5' => 'travel',
      '6' => 'tenant',
      '7' => 'fire & peril',
      '8' => 'personal accident',
      '9' => 'Savings and Investment',
      _ => 'insurance',
    };
  }

  void _goBack() {
    if (context.canPop()) {
      context.pop();
      return;
    }
    context.go(AppRoutes.getQuote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 393),
            child: Column(
              children: [
                _QuoteHeader(
                  title: 'Select a $_subject insurance variant',
                  onBack: _goBack,
                ),
                const Divider(
                  height: 1,
                  thickness: 2,
                  color: _dividerColor,
                  indent: 16,
                  endIndent: 16,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 55),
                        Hero(
                          tag: 'plan_${widget.id}',
                          child: Image.asset(
                            widget.productIcon,
                            width: 380,
                            height: 212,
                            fit: BoxFit.contain,
                            semanticLabel: 'Red insured car',
                          ),
                        ),
                        const SizedBox(height: 31),
                        for (var value in _plans.values) ...[
                          _QuoteResultTile(
                            title: value['name'],
                            onTap: () {
                              gotoQuotePage(context, value);
                            },
                          ),
                          const SizedBox(height: 12),
                        ],

                        // for (
                        //   var index = 0;
                        //   index < _plans.length;
                        //   index++
                        // ) ...[
                        //   // if (index == 0)
                        //   //   _FlexiPlanMenu(
                        //   //     result: _motorPlans[index],
                        //   //     selectedOption: _selectedFlexiOption,
                        //   //     options: _flexiOptions,
                        //   //     onSelected: (value) {
                        //   //       setState(() => _selectedFlexiOption = value);
                        //   //     },
                        //   //   )
                        //   // else
                        //
                        //     _QuoteResultTile(
                        //       title:_plans.keys,
                        //       onTap: () {},
                        //     ),
                        //   if (index != _plans.length - 1)
                        //     const SizedBox(height: 12),
                        // ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuoteHeader extends StatelessWidget {
  const _QuoteHeader({required this.title, required this.onBack});

  final String title;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: Row(
        children: [
          const SizedBox(width: 6),
          IconButton(
            onPressed: onBack,
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: _GetQuoteProductDetailsScreenState._textColor,
              size: 28,
            ),
          ),
          const SizedBox(width: 3),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: _GetQuoteProductDetailsScreenState._textColor,
                fontSize: 17,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.2,
              ),
            ),
          ),
          const SizedBox(width: 18),
        ],
      ),
    );
  }
}

// class _FlexiPlanMenu extends StatelessWidget {
//   const _FlexiPlanMenu({
//     required this.result,
//     required this.selectedOption,
//     required this.options,
//     required this.onSelected,
//   });
//
//   final _QuoteResult result;
//   final String? selectedOption;
//   final List<String> options;
//   final ValueChanged<String> onSelected;
//
//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<String>(
//       onSelected: onSelected,
//       color: Colors.white,
//       elevation: 5,
//       offset: const Offset(0, 64),
//       constraints: const BoxConstraints(minWidth: 345),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       itemBuilder: (context) => options
//           .map(
//             (option) => PopupMenuItem<String>(
//               value: option,
//               height: 50,
//               child: Text(
//                 option,
//                 style: const TextStyle(
//                   color: _GetQuoteProductDetailsScreenState._textColor,
//                   fontSize: 13,
//                 ),
//               ),
//             ),
//           )
//           .toList(),
//       child: _QuoteResultTile(
//         result: result.copyWith(
//           title: selectedOption ?? result.title,
//           subtitle: selectedOption == null ? result.subtitle : 'Selected cover',
//         ),
//         trailing: Icons.keyboard_arrow_down_rounded,
//       ),
//     );
//   }
// }

class _QuoteResultTile extends StatelessWidget {
  const _QuoteResultTile({
    required this.title,
    this.onTap,
    this.trailing = Icons.chevron_right_rounded,
  });

  // final _QuoteResult result;
  final VoidCallback? onTap;
  final IconData trailing;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11),
        side: const BorderSide(
          color: _GetQuoteProductDetailsScreenState._borderColor,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 62,
          // height: result.isMenu ? 72 : 62,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 9, 12, 9),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: _GetQuoteProductDetailsScreenState._textColor,
                          fontSize: 13,
                          height: 1.25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Text(
                      //   result.subtitle,
                      //   style: const TextStyle(
                      //     color: _GetQuoteProductDetailsScreenState._mutedColor,
                      //     fontSize: 10,
                      //     height: 1.2,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Icon(
                  trailing,
                  color: _GetQuoteProductDetailsScreenState._textColor,
                  // size: result.isMenu ? 25 : 20,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuoteResult {
  const _QuoteResult({
    required this.title,
    required this.subtitle,
    this.isMenu = false,
  });

  final String title;
  final String subtitle;
  final bool isMenu;

  _QuoteResult copyWith({String? title, String? subtitle}) {
    return _QuoteResult(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      isMenu: isMenu,
    );
  }
}
