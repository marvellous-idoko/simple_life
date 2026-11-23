import 'package:flutter/services.dart';
import 'package:openapi/openapi.dart';
import 'package:pay_with_paystack/pay_with_paystack.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/colors/app_colors.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/widgets/app_themed_bottom_sheet.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/screens/register_general_protection_screen.dart';
import 'package:uuid/uuid.dart';
import 'package:go_router/go_router.dart';

import '../services/general_storage.dart';
import 'dart:convert';

Future<bool> isExpired(String value) async {
  final message = await GeneralStorageService().getMessage();

  final storedValue = message?[value];

  final lastUpdatedStoredValue = message?['${value}LastUpdated'];
  if (storedValue == null) {
    return true;
  }

  final lastUpdated = DateTime.tryParse(lastUpdatedStoredValue);
  if (lastUpdated == null) {
    return true;
  }

  final expiryThreshold = DateTime.now().subtract(
    const Duration(hours: CACHED_VALUE_EXPIRY_TIME),
  );

  return !lastUpdated.isAfter(expiryThreshold);
}

Future<void> saveMessage(
  BuildContext context,
  Map<String, dynamic> updatedMessage,
) async {
  final bloc = context.read<GeneralBloc>();
  bloc.add(UpdateGeneralMessage(updatedMessage));
  await GeneralStorageService().saveMessage(updatedMessage);
}

String apiErrorMessage(
  Object error, {
  String fallback = 'Something went wrong. Please try again.',
}) {
  if (error is DioException) {
    final status = error.response?.statusCode;
    final data = error.response?.data;
    if (data is Map) {
      for (final key in ['detail', 'title', 'message']) {
        final value = data[key]?.toString().trim();
        if (value != null && value.isNotEmpty) {
          return value;
        }
      }
    } else if (data is String && data.trim().isNotEmpty) {
      return data.trim();
    }
    if (status == 401) {
      return 'Please sign in and try again.';
    }
    if (status == 403) {
      return 'You are not allowed to perform this action.';
    }
    if (status == 409) {
      return 'This request could not be completed. Check your details and try again.';
    }
    if (status != null) {
      return '$fallback (HTTP $status)';
    }
    return '$fallback (${error.type.name})';
  }
  if (error is StateError) {
    return error.message;
  }
  return fallback;
}

Future<dynamic?> getLifeQuoteEstimate(Map<String, dynamic> data) async {
  print(data);
  print('kkkkd');
  if (data['name'] == EndowmentPolicy['MYHEIRSPLUS']!['name']) {
    return GeneralRepository().getTermAssurancePremiumQuote(data);

  } else if (data['name'] == EndowmentPolicy['HEIRSTRIPLEPAY']!['name']) {
    return GeneralRepository().getTermAssurancePremiumQuote(data);

  } else if (data['name'] == ProtectionPolicy['HEIRSTERM']!['name']) {
    return GeneralRepository().getTermAssurancePremiumQuote(data);
  } else if (data['name'] == ProtectionPolicy['HEIRSSURGERY']!['name']) {
    return GeneralRepository().getSurgeryCarePremiumQuote(data);
  } else if (data['name'] == ProtectionPolicy['HEIRSSMART']!['name']) {
    return GeneralRepository().getSmartSchoolPremiumQuote(data);
  } else if (data['name'] == ProtectionPolicy['HOSPITALBASIC']!['name']) {
    return GeneralRepository().getHospitalCashBasicPremiumQuote(data);
  } else if (data['name'] ==
      ProtectionPolicy['HOSPITALINTERMEDIATE']!['name']) {
    return GeneralRepository().getHospitalCashIntermediatePremiumQuote(data);
  } else if (data['name'] == ProtectionPolicy['HOSPITALADVANCE']!['name']) {
    return GeneralRepository().getHospitalCashAdvancePremiumQuote(data);
  } else if (data['name'] == ProtectionPolicy['HEIRSKEYMAN']!['name']) {
    return GeneralRepository().getKeymanPremiumQuote(data);
  } else if (data['name'] == ProtectionPolicy['HEIRSWHOLELIFE']!['name']) {
    return GeneralRepository().getWholeLifePremiumQuote(data);
  } else if (data['name'] ==
      ProtectionPolicy['HEIRSWHOLELIFELIMITED']!['name']) {
    return GeneralRepository().getWholeLifeLimitedPremiumQuote(data);
  } else if (data['name'] == SavingsPolicy['HEIRSSAVE']!['name']) {
    return GeneralRepository().getSavePremiumQuote(data);
  } else if (data['name'] == SavingsPolicy['HEIRSCOUPLE']!['name']) {
    return GeneralRepository().getCouplePremiumQuote(data);
  } else if (data['name'] == SavingsPolicy['HEIRSSALARY']!['name']) {
    return GeneralRepository().getSalaryPremiumQuote(data);
  } else if (data['name'] == SavingsPolicy['MYHEIRS']!['name']) {
    return GeneralRepository().getMyHeirsPremiumQuote(data);
  } else if (data['name'] == SavingsPolicy['HEIRSSAVEEXTRA']!['name']) {
    return GeneralRepository().getSaveExtraPremiumQuote(data);
  } else if (data['name'] == SavingsPolicy['HEIRSENTREPRENUER']!['name']) {
    return GeneralRepository().getSavePremiumQuote(data);
  }
}

Future<dynamic> getLifeQuotePremium(Map<String, dynamic> data) async {
  try {
    if (data['name'] == ProtectionPolicy['HEIRSTERM']!['name']) {
      return await GeneralRepository().getTermAssuranceSumAssuredQuote(data);
    } else if (data['name'] == ProtectionPolicy['HEIRSSURGERY']!['name']) {
      return await GeneralRepository().getSurgeryCareSumAssuredQuote(data);
    } else if (data['name'] == ProtectionPolicy['HOSPITALBASIC']!['name']) {
      return await GeneralRepository().getHospitalCashBasicSumAssuredQuote(
        data,
      );
    } else if (data['name'] ==
        ProtectionPolicy['HOSPITALINTERMEDIATE']!['name']) {
      return await GeneralRepository()
          .getHospitalCashIntermediateSumAssuredQuote(data);
    } else if (data['name'] == ProtectionPolicy['HOSPITALADVANCE']!['name']) {
      return await GeneralRepository().getHospitalCashAdvanceSumAssuredQuote(
        data,
      );
    } else if (data['name'] == ProtectionPolicy['HEIRSKEYMAN']!['name']) {
      return await GeneralRepository().getKeymanSumAssuredQuote(data);
    } else if (data['name'] == ProtectionPolicy['HEIRSSMART']!['name']) {
      return await GeneralRepository().getSmartSchoolSumAssuredQuote(data);
    } else if (data['name'] == ProtectionPolicy['HEIRSCREDITLIFE']!['name']) {
      return await GeneralRepository().getCreditLifeSumAssuredQuote(data);
    } else if (data['name'] == ProtectionPolicy['HEIRSWHOLELIFE']!['name']) {
      return await GeneralRepository().getWholeLifeAssuredQuote(data);
    } else if (data['name'] ==
        ProtectionPolicy['HEIRSWHOLELIFELIMITED']!['name']) {
      return await GeneralRepository().getWholeLifeLimitedAssuredQuote(data);
    } else if (data['name'] == SavingsPolicy['HEIRSSAVE']!['name']) {
      return await GeneralRepository().getSaveSumAssuredQuote(data);
    } else if (data['name'] == SavingsPolicy['HEIRSCOUPLE']!['name']) {
      return await GeneralRepository().getCoupleSumAssuredQuote(data);
    } else if (data['name'] == SavingsPolicy['HEIRSSALARY']!['name']) {
      return await GeneralRepository().getSalarySumAssuredQuote(data);
    } else if (data['name'] == SavingsPolicy['MYHEIRS']!['name']) {
      return await GeneralRepository().getMyHeirsSumAssuredQuote(data);
    } else if (data['name'] == SavingsPolicy['HEIRSSAVEEXTRA']!['name']) {
      return await GeneralRepository().getSaveExtraSumAssuredQuote(data);
    } else if (data['name'] == SavingsPolicy['HEIRSENTREPRENUER']!['name']) {
      return await GeneralRepository().getSaveSumAssuredQuote(data);
    }

    return null;
  } catch (e) {
    print('error in getLifeQuotePremium');
    print(e);
    return null;
  }
}

bool isProfileComplete(BuildContext context) {
  final person = context.read<GeneralBloc>().state.message['profile']['person'];
  print('person71');
  print(person);
  if (!(person['health'] != null)) {
    return false;
  } else {
    return true;
  }
}

Future<Response<void>>? createGeneralDocument(BuildContext context) {
  try {
    final message = context.read<GeneralBloc>().state.message;
    Map<String, Object> documentParam = <String, Object>{
      'documentId': message['policy']['document']['documentId'],
      'body': {
        'businessType': BusinessType.direct.value,
        'businessChannel': BusinessChannel.mobile.value,
      },
    };
    if (message['policy']['type'] == HomeOwnerPolicy['HOMEPROTECT']?['name']) {
      return GeneralRepository().createHomeProtectDocument(documentParam);
    } else if (message['policy']['type'] ==
        HomeOwnerPolicy['HOMEPROTECTPLUS']?['name']) {
      return GeneralRepository().createHomeProtectPlusDocument(documentParam);
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTBRONZE']?['name']) {
      return GeneralRepository().createTenantProtectBronzeDocument(
        documentParam,
      );
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTSILVER']?['name']) {
      return GeneralRepository().createTenantProtectSilverDocument(
        documentParam,
      );
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTGOLD']?['name']) {
      return GeneralRepository().createTenantProtectGoldDocument(documentParam);
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTPLUS']?['name']) {
      return GeneralRepository().createTenantProtectPlusDocument(documentParam);
    } else if (message['policy']['type'] ==
        SmePolicy['BUSINESSPROTECT']?['name']) {
      return GeneralRepository().createBusinessProtectDocument(documentParam);
    } else if (message['policy']['type'] ==
        SmePolicy['BUSINESSPROTECTPLUS']?['name']) {
      return GeneralRepository().createBusinessProtectPlusDocument(
        documentParam,
      );
    } else if (message['policy']['type'] == PersonalAccidentPolicy['PERSONALBRONZE']?['name']) {
      return GeneralRepository().createAccidentBronzeDocument(
        documentParam,
      );
    }else if (message['policy']['type'] == PersonalAccidentPolicy['PERSONALSILVER']?['name']) {
      return GeneralRepository().createAccidentSilverDocument(
        documentParam,
      );
    }
    else if (message['policy']['type'] == PersonalAccidentPolicy['PERSONALGOLD']?['name']) {
      return GeneralRepository().createAccidentGoldDocument(
        documentParam,
      );
    }
    else if (message['policy']['type'] == PersonalAccidentPolicy['PERSONALPLATINUM']?['name']) {
      return GeneralRepository().createAccidentPlatinumDocument(
        documentParam,
      );
    }else {
      return null;
    }
  } catch (e) {
    print('Error $e');
  }
}

Future<Response<void>>? createMotorDocument(BuildContext context) {
  try {
    final message = context.read<GeneralBloc>().state.message;
    Map<String, Object> documentParam = <String, Object>{
      'documentId': message['policy']['document']['documentId'],
      'body': {
        'businessType': BusinessType.direct.value,
        'businessChannel': BusinessChannel.mobile.value,
      },
    };
    if (message['policy']['type'] == MotorPolicy['HEIRSTHIRDPARTY']?['name']) {
      return GeneralRepository().create3rdPartyDocument(documentParam);
    } else if (message['policy']['type'] == MotorPolicy['HERMOTOR']?['name']) {
      return GeneralRepository().createHerMotorDocument(documentParam);
    } else if (message['policy']['type'] ==
        MotorPolicy['HEIRSCOMPREHENSIVE']?['name']) {
      return GeneralRepository().createComprehensiveDocument(documentParam);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS70k']?['name']) {
      return GeneralRepository().createHeirs70kDocument(documentParam);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS35k']?['name']) {
      return GeneralRepository().createHeirs35kDocument(documentParam);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS25k']?['name']) {
      return GeneralRepository().createHeirs25kDocument(documentParam);
    } else {
      return null;
    }
  } catch (e) {
    print('Error $e');
  }
}

Future<Response<void>?> addMotorToDocument(BuildContext context) async {
  try {
    final message = context.read<GeneralBloc>().state.message;
    Map<String, Object> data = <String, Object>{
      'documentId': message['policy']['document']['documentId'],
      'motorId': message['policy']['motor']['motorId'],
    };
    if (message['policy']['type'] == MotorPolicy['HEIRSTHIRDPARTY']?['name']) {
      return GeneralRepository().addMotorTo3rdPartyDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HERMOTOR']?['name']) {
      return GeneralRepository().addMotorToHerMotorDocument(data);
    } else if (message['policy']['type'] ==
        MotorPolicy['HEIRSCOMPREHENSIVE']?['name']) {
      return GeneralRepository().addMotorToComprehensiveDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS70k']?['name']) {
      return GeneralRepository().addMotorToHeirs70kDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS35k']?['name']) {
      return GeneralRepository().addMotorToHeirs35kDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS25k']?['name']) {
      return GeneralRepository().addMotorToHeirs25kDocument(data);
    } else {
      return null;
    }
  } catch (e) {
    print('Error $e');
  }
}

addInterestToDocument(BuildContext context) {
  final message = context.read<GeneralBloc>().state.message;
  Map<String, Object> data = <String, Object>{
    'documentId': message['policy']['document']['documentId'],
    'xId': message['policy']['insured']['xId'],
  };
  if (message['policy']['type'] == HomeOwnerPolicy['HOMEPROTECT']?['name']) {
    return GeneralRepository().addHouseToHomeProtectDocument(data);
  } else if (message['policy']['type'] ==
      HomeOwnerPolicy['HOMEPROTECTPLUS']?['name']) {
    return GeneralRepository().addHouseToHomeProtectPlusDocument(data);
  } else if (message['policy']['type'] ==
      TenantPolicy['TENANTPROTECTBRONZE']?['name']) {
    return GeneralRepository().addHouseToTenantProtectBronzeDocument(data);
  } else if (message['policy']['type'] ==
      TenantPolicy['TENANTPROTECTSILVER']?['name']) {
    return GeneralRepository().addHouseToTenantProtectSilverDocument(data);
  } else if (message['policy']['type'] ==
      TenantPolicy['TENANTPROTECTGOLD']?['name']) {
    return GeneralRepository().addHouseToTenantProtectGoldDocument(data);
  } else if (message['policy']['type'] ==
      TenantPolicy['TENANTPROTECTPLUS']?['name']) {
    return GeneralRepository().addHouseToTenantProtectPlusDocument(data);
  } else if (message['policy']['type'] ==
      SmePolicy['BUSINESSPROTECT']?['name']) {
    return GeneralRepository().addShopToBusinessProtectDocument(data);
  } else if (message['policy']['type'] ==
      SmePolicy['BUSINESSPROTECTPLUS']?['name']) {
    return GeneralRepository().addShopToBusinessProtectPlusDocument(data);
  }
}

List<BuildingItem> parseInsuredItems(dynamic raw) {
  if (raw == null) return [];
  if (raw is Iterable) {
    return raw.map((e) {
      if (e is BuildingItem) return e;
      if (e is Map) {
        return BuildingItem.fromMap(Map<String, dynamic>.from(e));
      }
      throw ArgumentError('Invalid insured item: $e');
    }).toList();
  }
  return [];
}

Future<void> addInsuredItems(BuildContext context) async {
  final message = context.read<GeneralBloc>().state.message;
  final policyType = message['policy']['type']?.toString();
  if (policyType == null || !HomeOwnerPolicies.contains(policyType)) {
    return;
  }
  final ownerId = message['policy']['insured']?['xId']?.toString();
  if (ownerId == null || ownerId.isEmpty) {
    debugPrint('addInsuredItems: missing owner xId');
    return;
  }
  final items = parseInsuredItems(message['policy']['insuredItems']);
  for (final item in items) {
    if (item.itemType == 'mobileItem') {
      await GeneralRepository().addMobileItemToOwner(
        ownerId: ownerId,
        item: item,
      );
    } else if (item.itemType == 'stationaryItem') {
      await GeneralRepository().addStationaryItemToOwner(
        ownerId: ownerId,
        item: item,
      );
    }
  }
}

Future<Response<void>?> addCustomerToGeneralDocucment(
  BuildContext context,
) async {
  try {
    final message = context.read<GeneralBloc>().state.message;
    Map<String, Object> data = <String, Object>{
      'documentId': message['policy']['document']['documentId'],
      'customer': message['profile']['customer']['customerId'],
    };
    if (message['policy']['type'] == MotorPolicy['HEIRSTHIRDPARTY']?['name']) {
      return GeneralRepository().addCustomerTo3rdPartyDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HERMOTOR']?['name']) {
      return GeneralRepository().addCustomerToHerMotorDocument(data);
    } else if (message['policy']['type'] ==
        MotorPolicy['HEIRSCOMPREHENSIVE']?['name']) {
      return GeneralRepository().addCustomerToComprehensiveDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS70k']?['name']) {
      return GeneralRepository().addCustomerToHeirs70kDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS35k']?['name']) {
      return GeneralRepository().addCustomerToHeirs35kDocument(data);
    } else if (message['policy']['type'] == MotorPolicy['HEIRS25k']?['name']) {
      return GeneralRepository().addCustomerToHeirs25kDocument(data);
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTBRONZE']?['name']) {
      return GeneralRepository().addCustomerToTenantProtectBronzeDocument(data);
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTSILVER']?['name']) {
      return GeneralRepository().addCustomerToTenantProtectSilverDocument(data);
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTGOLD']?['name']) {
      return GeneralRepository().addCustomerToTenantProtectGoldDocument(data);
    } else if (message['policy']['type'] ==
        TenantPolicy['TENANTPROTECTPLUS']?['name']) {
      return GeneralRepository().addCustomerToTenantProtectPlusDocument(data);
    } else if (message['policy']['type'] ==
        SmePolicy['BUSINESSPROTECT']?['name']) {
      return GeneralRepository().addCustomerToBusinessProtectDocument(data);
    } else if (message['policy']['type'] ==
        SmePolicy['BUSINESSPROTECTPLUS']?['name']) {
      return GeneralRepository().addCustomerToBusinessProtectPlusDocument(data);
    } else if (message['policy']['type'] ==
        HomeOwnerPolicy['HOMEPROTECT']?['name']) {
      return GeneralRepository().addCustomerToHomeProtectDocument(data);
    } else if (message['policy']['type'] ==
        HomeOwnerPolicy['HOMEPROTECTPLUS']?['name']) {
      return GeneralRepository().addCustomerToHomeProtectPlusDocument(data);
    } else {
      return null;
    }
  } catch (e) {}
}
Future<void> createPersonalAccidentDocument(BuildContext context) async {
  final message = context.read<GeneralBloc>().state.message;
  final customer = message['profile']?['customer'];
  if (customer is! Map) {
    throw StateError(
      'Customer profile is required before creating accident person.',
    );
  }

  final personId = const Uuid().v4();
  final documentId = const Uuid().v4();
  message['policy']['document'] = {
    'documentId': documentId,
    'accidentId': personId,
  };
  await saveMessage(context, message);
  await GeneralRepository().createAccidentPerson({
    'personId': personId,
    'customer': Map<String, dynamic>.from(customer),
  });

  await createGeneralDocument(context);
  await addPersonToAccidentDocument(context);
  if (!context.mounted) return;
  context.push(AppRoutes.personalAccidentSummary);
}

Future<Response<void>?> addPersonToAccidentDocument(BuildContext context) async {
  final message = context.read<GeneralBloc>().state.message;
  Map<String, String> data = <String, String>{
    'documentId': message['policy']['document']['documentId'],
    'accidentId': message['policy']['document']['accidentId'],
  };
  final policyType = message['policy']?['type']?.toString();
  if (policyType == PersonalAccidentPolicy['PERSONALBRONZE']?['name']) {
    return GeneralRepository().addPersonToAccidentBronzeDocument(data);
  } else if (policyType == PersonalAccidentPolicy['PERSONALSILVER']?['name']) {
    return GeneralRepository().addPersonToAccidentSilverDocument(data);
  } else if (policyType == PersonalAccidentPolicy['PERSONALGOLD']?['name']) {
    return GeneralRepository().addPersonToAccidentGoldDocument(data);
  } else if (policyType == PersonalAccidentPolicy['PERSONALPLATINUM']?['name']) {
    return GeneralRepository().addPersonToAccidentPlatinumDocument(data);
  }
  else {
    return null;
  }
}

createLifePolicyDocument(BuildContext context) {
  try {
    final message = context.read<GeneralBloc>().state.message;
    final documentId = const Uuid().v4();
    Map<String, Object> documentParam = <String, Object>{
      'documentId': documentId,
      'body': {
        'personId': message['profile']['person']['personId'],
        'sumAssured': message['policy']['quote']['sumAssured'],
        'frequency': message['policy']['quote']['frequency'],
        'term': message['policy']['quote']['term'],
        'contribution': message['policy']['quote']['contribution'],
        'businessType': BusinessType.direct.value,
        'businessChannel': BusinessChannel.mobile.value,
      },
      'type': message['policy']?['type'],
    };

    GeneralRepository().createlifeDocument(documentParam).then((value) {
      Map<String, Object> customerLoad = {
        'documentId': documentId,
        'body': {
          'customerId': message['profile']['customer']['customerId'],
          'agentPhone': null,
          'referralId': null,
        },
        'type': message['policy']?['type'],
      };
      GeneralRepository().addCustomerToLifeDocument(customerLoad).then((
        value,
      ) async {
        message['policy']['document'] = {'id': documentId};
        await saveMessage(context, message);
        context.push(AppRoutes.beneficiaries);
      });
    });
  } catch (e) {
    print('error in createLifePolicyDocument');
    print(e);
  }
}

Future<Response<void>?> addBeneficiaryToPolicy(
  Map<String, dynamic> shareDocument,
) async {
  final policyType = shareDocument['policyType']?.toString();
  if (policyType == EndowmentPolicy['MYHEIRSPLUS']!['name']) {
    return null;
  }
  if (policyType == EndowmentPolicy['HEIRSTRIPLEPAY']!['name']) {
    return null;
  }
  if (lifePolicies.contains(policyType)) {
    return GeneralRepository().addBeneficiaryToPolicy(shareDocument);
  }
  return null;
}

final lifePolicies = [
  EndowmentPolicy['MYHEIRSPLUS']!['name'],
  EndowmentPolicy['HEIRSTRIPLEPAY']!['name'],
  EndowmentPolicy['HEIRSENDOWMENT']!['name'],
  EndowmentPolicy['HEIRSSECUREPLAN']!['name'],
  SavingsPolicy['HEIRSSAVE']!['name'],
  SavingsPolicy['HEIRSCOUPLE']!['name'],
  SavingsPolicy['HEIRSSALARY']!['name'],
  SavingsPolicy['HEIRSENTREPRENUER']!['name'],
  SavingsPolicy['MYHEIRS']!['name'],
  SavingsPolicy['HEIRSSAVEEXTRA']!['name'],
  ProtectionPolicy['HEIRSTERM']!['name'],
  ProtectionPolicy['HEIRSSMART']!['name'],
  ProtectionPolicy['HEIRSSURGERY']!['name'],
  ProtectionPolicy['HOSPITALBASIC']!['name'],
  ProtectionPolicy['HOSPITALINTERMEDIATE']!['name'],
  ProtectionPolicy['HOSPITALADVANCE']!['name'],
  ProtectionPolicy['HEIRSCREDITLIFE']!['name'],
  ProtectionPolicy['HEIRSWHOLELIFE']!['name'],
  ProtectionPolicy['HEIRSWHOLELIFELIMITED']!['name'],
  ProtectionPolicy['HEIRSKEYMAN']!['name'],
];
final motorPolicies = [
  MotorPolicy['HEIRSTHIRDPARTY']!['name'],
  // MotorPolicy['HEIRSTHIRDPARTYFIRE']!['name'],
  MotorPolicy['HERMOTOR']!['name'],
  MotorPolicy['HEIRSCOMPREHENSIVE']!['name'],
  MotorPolicy['HEIRS70k']!['name'],
  MotorPolicy['HEIRS35k']!['name'],
  MotorPolicy['HEIRS25k']!['name'],
];
final HomeOwnerPolicies = [
  HomeOwnerPolicy['HOMEPROTECT']!['name'],
  HomeOwnerPolicy['HOMEPROTECTPLUS']!['name'],
];
final BusinessProtectPolicies = [
  SmePolicy['BUSINESSPROTECT']!['name'],
  SmePolicy['BUSINESSPROTECTPLUS']!['name'],
];
final TenantProtectPolicies = [
  TenantPolicy['TENANTPROTECTBRONZE']!['name'],
  TenantPolicy['TENANTPROTECTSILVER']!['name'],
  TenantPolicy['TENANTPROTECTGOLD']!['name'],
  TenantPolicy['TENANTPROTECTPLUS']!['name'],
];

final PersonalAccidentPolicies = [
  PersonalAccidentPolicy['PERSONALBRONZE']!['name'],
  PersonalAccidentPolicy['PERSONALSILVER']!['name'],
  PersonalAccidentPolicy['PERSONALGOLD']!['name'],
  PersonalAccidentPolicy['PERSONALPLATINUM']!['name'],
];
final FireTheftPolicies = [FireTheftPolicy['FIREANDTHEFT']!['name']];

void gotoPolicySummary(BuildContext context, String type) {
  if (lifePolicies.contains(type)) {
    context.push(AppRoutes.lifePolicySummary);
  }
}

payWithPaystack(
  BuildContext context,
  String documentId,
  String payId,
  String paymentCode,
  String type,
) async {
  var payload = <String, dynamic>{
    'documentId': documentId,
    'payId': payId,
    'body': <String, dynamic>{
      'method': PaymentMethod.paystack.value,
      'paymentCode': paymentCode,
      'referrer':
          'https://simple.heirslifeassurance.com/term/summary?payId=$payId',
    },
    'type': type,
  };

  registerPayment(payload).then((value) {
    getPaymentLink(payload)
        .then((responze) async {
          PayWithPayStack.configure(
            PaystackConfig(
              publicKey: responze.key, // ← public key only (pk_…)
              currency: PaystackCurrency.ngn.value,
              // enableLogging: kDebugMode, // logs in debug, silent in release
              timeout: const Duration(seconds: 120),
            ),
          );
          await PayWithPayStack().now(
            context: context,
            customerEmail: responze.email,
            amount: double.parse(responze.amount.toString()) / 100,
            callbackUrl: responze.callbackUrl,
            reference: responze.reference,
            transactionCompleted: (PaymentData data) {
              print(data.reference);
              () async {
                try {
                  await GeneralRepository().paystackCallback(data);
                  final tranx = await GeneralRepository().getPaymentStatus(payId);
                  debugPrint('Payment status: ${tranx?.data}');
                  if (!context.mounted) return;
                  final paid = tranx?.data?.status == true;
                  await showAppThemedBottomSheet(
                    context,
                    theme: paid
                        ? AppBottomSheetTheme.success
                        : AppBottomSheetTheme.warning,
                    title: paid ? 'Payment successful' : 'Payment pending',
                    message: paid
                        ? 'Your payment has been confirmed.'
                        : 'We received your payment but policy activation is still processing. Check back shortly.',
                  );
                } catch (error, stack) {
                  debugPrint('Payment status error: $error\n$stack');
                  if (!context.mounted) return;
                  await showAppThemedBottomSheet(
                    context,
                    theme: AppBottomSheetTheme.error,
                    title: 'Could not confirm payment',
                    message:
                        'Payment may have gone through, but we could not verify status. Please check My Policies or contact support.',
                  );
                }
              }();
              print('[OK] Payment callback received for: ${data.reference}');
            },
            transactionNotCompleted: (String reason) {
              print('[FAIL] Payment not completed: $reason');
            },
            transactionCancelled: () {
              print('[CANCELLED] User closed checkout without paying');
            },
          );

          // final transactionRequest = PaystackTransactionRequest(
          //   reference: responze.reference,
          //   secretKey: responze.key,
          //   email: responze.email,
          //   // amount: double.parse(responze.amount),
          //   amount: 200000,
          //
          //   currency: PaystackCurrency.ngn,
          //   channel: [
          //     PaystackPaymentChannel.mobileMoney,
          //     PaystackPaymentChannel.card,
          //     PaystackPaymentChannel.ussd,
          //     PaystackPaymentChannel.bankTransfer,
          //     PaystackPaymentChannel.bank,
          //     PaystackPaymentChannel.qr,
          //     PaystackPaymentChannel.eft,
          //   ],
          // );
          // final initializedTransaction =
          //     await PaymentService.initializeTransaction(transactionRequest);
          //
          // if (!initializedTransaction.status) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       backgroundColor: Colors.red,
          //       content: Text(initializedTransaction.message),
          //     ),
          //   );
          //
          //   return;
          // }
          // final response =
          //     await PaymentService.showPaymentModal(
          //       context,
          //       transaction: initializedTransaction,
          //       // Callback URL must match the one specified on your paystack dashboard,
          //       callbackUrl: '...',
          //     ).then((ee) async {
          //       print('dd');
          //       // return await PaymentService.verifyTransaction(
          //       //   paystackSecretKey: '...',
          //       //   initializedTransaction.data?.reference ?? request.reference,
          //       // );
          //     });
          //
          // print(response); // Result of the confirmed payment
        })
        .catchError((error) {
          print('error');
          print(error);
        });
  });
  // .catchError((error) {
  //   print(error);
  // });
}

Future<dynamic> getPaymentLink(Map<String, dynamic> payload) async {
    return GeneralRepository().payForDocument(payload);
}

Future<Response<void>?> registerPayment(Map<String, dynamic> payload) async {
    return GeneralRepository().registerLifePayment(payload);
}
// Future<void> goToNextPage(
//     BuildContext context,
//     String name,
//     String code,
//     dynamic productClass,
//     ) async {
//   print(productClass.toString());
//   var message = context.read<GeneralBloc>().state.message;
//   message['policy'] = {'type': name,
//     'class': productClass,
//     'terms':product.product['terms'],
//     'availableFrequencies':product.product['availableFrequencies'],
//     'minAmount':product.product['minAmount']
//   };
//   await saveMessage(context, context.read<GeneralBloc>().state.message);
//   context.go(AppRoutes.lifeProductForm);
//   // context.go('/life-products/${productClass}');
//
// }

Future<void> goToNextPage(
  BuildContext context,
  String name,
  String code,
  dynamic productq,
) async {
  var message = context.read<GeneralBloc>().state.message;
  if (lifePolicies.contains(name)) {
    message['policy'] = {
      'type': name,
      'class': productq,
      'terms': productq['terms'],
      'availableFrequencies': productq['availableFrequencies'],
      'minAmount': productq['minAmount'],
    };
    await saveMessage(context, context.read<GeneralBloc>().state.message);
    context.push(AppRoutes.lifeProductForm);
  } else if (motorPolicies.contains(name)) {
    message['policy'] = {'type': name, 'class': productq};
    await saveMessage(context, context.read<GeneralBloc>().state.message);
    context.push(AppRoutes.motorPolicyForm);
  } else if (HomeOwnerPolicies.contains(name) ||
      BusinessProtectPolicies.contains(name)) {
    message['policy'] = {'type': name, 'class': productq};
    await saveMessage(context, context.read<GeneralBloc>().state.message);
    context.push(AppRoutes.HomeOwnerPolicyForm);
  }
}

Future<void> gotoQuotePage(BuildContext context, value) async {
  final product = Map<String, dynamic>.from(value as Map);
  final shouldProceed = await _showProductDetailsSheet(context, product);
  if (!context.mounted || shouldProceed != true) return;

  final message = context.read<GeneralBloc>().state.message;
  message['isFromQuote'] = true;
  if (lifePolicies.contains(product['name'])) {
    message['policy'] = {
      'type': product['name'],
      'class': product,
      'terms': product['terms'],
      'availableFrequencies': product['availableFrequencies'],
      'minAmount': product['minAmount'],
    };
    await saveMessage(context, message);
    if (!context.mounted) return;
    context.push(AppRoutes.lifeProductForm);
  } else if (motorPolicies.contains(product['name'])) {
    message['policy'] = {'type': product['name'], 'class': product};
    await saveMessage(context, message);
    if (!context.mounted) return;
    context.push(AppRoutes.motorPolicyForm);
  } else if (HomeOwnerPolicies.contains(product['name']) ||
      BusinessProtectPolicies.contains(product['name']) ||
      TenantProtectPolicies.contains(product['name']) ||
      PersonalAccidentPolicies.contains(product['name']) ||
      FireTheftPolicies.contains(product['name'])) {
    message['policy'] = {'type': product['name'], 'class': product};
    await saveMessage(context, message);
    if (!context.mounted) return;
    context.push(AppRoutes.HomeOwnerPolicyForm);
  }
}

Future<bool?> _showProductDetailsSheet(
  BuildContext context,
  Map<String, dynamic> product,
) {
  return showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withValues(alpha: 0.48),
    builder: (sheetContext) => _ProductDetailsSheet(
      product: product,
      onProceed: () => Navigator.of(sheetContext).pop(true),
    ),
  );
}

class _ProductDetailsSheet extends StatelessWidget {
  const _ProductDetailsSheet({required this.product, required this.onProceed});

  final Map<String, dynamic> product;
  final VoidCallback onProceed;

  @override
  Widget build(BuildContext context) {
    final name = product['name']?.toString() ?? 'Insurance product';
    final description =
        product['description']?.toString() ??
        'Protection designed around your needs.';
    final terms = _asList(product['terms']);
    final frequencies = _asList(product['availableFrequencies']);
    final minimumAmount = num.tryParse(product['minAmount']?.toString() ?? '');

    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 1,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 620),
        child: Material(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          clipBehavior: Clip.antiAlias,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(
              24,
              12,
              24,
              22 + MediaQuery.paddingOf(context).bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 44,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9DCE2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: 62,
                  height: 62,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFEAE8),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.shield_outlined,
                    color: AppColors.primary,
                    size: 31,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.textColor,
                    fontSize: 21,
                    height: 1.2,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.mutedColor,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
                if (minimumAmount != null ||
                    terms.isNotEmpty ||
                    frequencies.isNotEmpty) ...[
                  const SizedBox(height: 22),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F9FB),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFEBEDF1)),
                    ),
                    child: Column(
                      children: [
                        if (minimumAmount != null)
                          _ProductDetailRow(
                            label: 'Minimum amount',
                            value: _formatProductCurrency(minimumAmount),
                          ),
                        if (minimumAmount != null && terms.isNotEmpty)
                          const Divider(height: 20),
                        if (terms.isNotEmpty)
                          _ProductDetailRow(
                            label: 'Available terms',
                            value: '${terms.join(', ')} years',
                          ),
                        if ((minimumAmount != null || terms.isNotEmpty) &&
                            frequencies.isNotEmpty)
                          const Divider(height: 20),
                        if (frequencies.isNotEmpty)
                          _ProductDetailRow(
                            label: 'Payment options',
                            value: frequencies.map(_formatFrequency).join(', '),
                          ),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 26),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: FilledButton(
                    onPressed: onProceed,
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Proceed',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
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

  static List<String> _asList(dynamic value) {
    if (value is Iterable) {
      return value.map((item) => item.toString()).toList();
    }
    return const [];
  }

  static String _formatFrequency(String value) {
    if (value.isEmpty) return value;
    return '${value[0].toUpperCase()}${value.substring(1)}';
  }

  static String _formatProductCurrency(num value) {
    final raw = value.toStringAsFixed(0);
    final formatted = raw.replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (_) => ',',
    );
    return '₦$formatted';
  }
}

class _ProductDetailRow extends StatelessWidget {
  const _ProductDetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(color: AppColors.mutedColor, fontSize: 12),
          ),
        ),
        const SizedBox(width: 16),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

Future<Object?>? getMotorQuote(dynamic details) {
  switch (details['name']) {
    case final name when name == MotorPolicy['HEIRSTHIRDPARTY']!['name']:
      return GeneralRepository().get3rdPartyQuote(
        details['motorClass'],
        details['motorType'],
      );
    // case final name
    //     when name == MotorPolicy['HEIRSTHIRDPARTYFIRE']!['name']:
    //   return GeneralRepository().getHerMotorQuote(details['motorClass'], details['motorValue']);
    case final name when name == MotorPolicy['HEIRSCOMPREHENSIVE']!['name']:
      return GeneralRepository().getComprehensiveQuote(
        details['motorClass'],
        details['motorValue'],
      );
    case final name when name == MotorPolicy['HEIRS70k']!['name']:
      return GeneralRepository().getHeirs70kQuote();
    case final name when name == MotorPolicy['HEIRS35k']!['name']:
      return GeneralRepository().getHeirs35kQuote();
    case final name when name == MotorPolicy['HEIRS25k']!['name']:
      return GeneralRepository().getHeirs25kQuote();
    case final name when name == MotorPolicy['HERMOTOR']!['name']:
      return GeneralRepository().getHerMotorQuote(
        details['motorClass'],
        details['motorValue'],
      );
    default:
      return null;
  }
}

getHomeOwnerQuote(dynamic details) {
  switch (details['name']) {
    case final name when name == HomeOwnerPolicy['HOMEPROTECT']!['name']:
      return GeneralRepository().getHomeProtect();
    case final name when name == HomeOwnerPolicy['HOMEPROTECTPLUS']!['name']:
      return GeneralRepository().getHomeProtectPlus({
        'stationaryValue': details['stationaryValue'],
        'mobileValue': details['mobileValue'],
        'value': details['buildingValue'],
      });
  }
}

getSmeProtectQuote(dynamic details) {
  switch (details['name']) {
    case final name when name == SmePolicy['BUSINESSPROTECT']!['name']:
      return GeneralRepository().getBusinessProtectQuote(details);
    case final name when name == SmePolicy['BUSINESSPROTECTPLUS']!['name']:
      return GeneralRepository().getBusinessProtectQuotePlus(details);
  }
}

getPersonalAccidentQuote(dynamic details) {
  switch (details['name']) {
    case final name
        when name == PersonalAccidentPolicy['PERSONALBRONZE']!['name']:
      return GeneralRepository().getPersonalAccidentBronzeQuote(details);
    case final name
        when name == PersonalAccidentPolicy['PERSONALSILVER']!['name']:
      return GeneralRepository().getAccidentSilverQuote(details);
    case final name
        when name == PersonalAccidentPolicy['PERSONALGOLD']!['name']:
      return GeneralRepository().getAccidentGoldQuote(details);
    case final name
        when name == PersonalAccidentPolicy['PERSONALPLATINUM']!['name']:
      return GeneralRepository().getAccidentPlatinumQuote(details);
  }
}

getTenantProtectQuote(dynamic details) {
  switch (details['name']) {
    case final name when name == TenantPolicy['TENANTPROTECTBRONZE']!['name']:
      return GeneralRepository().getTenantProtectBronzeQuote(details);
    case final name when name == TenantPolicy['TENANTPROTECTSILVER']!['name']:
      return GeneralRepository().getTenantProtectSilverQuote(details);
    case final name when name == TenantPolicy['TENANTPROTECTGOLD']!['name']:
      return GeneralRepository().getTenantProtectGoldQuote(details);
    case final name when name == TenantPolicy['TENANTPROTECTPLUS']!['name']:
      return GeneralRepository().getTenantProtectPlusQuote(details);
  }
}

String resolveInsuranceCompany(
  Map<String, dynamic> message, {
  String defaultCode = 'HIL',
}) {
  final value = message['company']?.toString().trim();
  if (value != null && value.isNotEmpty) return value;
  final policyCompany = message['policy']?['company']?.toString().trim();
  if (policyCompany != null && policyCompany.isNotEmpty) return policyCompany;
  return Company[defaultCode] ?? Company['HLA']!;
}

Future<void> sendBuyActionToCustomerExperience({
  required String company,
  required String phoneNumber,
  String? policyInfo,
  String? inquiryType,
}) {
  return GeneralRepository().sendBuyActionToCustomerExperience({
    'company': company,
    'phoneNumber': phoneNumber,
    'policyInfo': policyInfo,
    'inquiryType': inquiryType,
  });
}

Future<Object?>? verifyAccountDetails(String accountNumber, String bankCode) {
  try {
    return GeneralRepository().verifyAccountDetails(accountNumber, bankCode);
  } catch (e) {
    print('Error verifying account details: $e');
    return null;
  }
}

checkIfUserHasSelectedProfile() {
  try {
    return GeneralRepository().checkIfUserHasSelectedProfile();
  } catch (e) {
    print('Error verifying account details: $e');
    return null;
  }
}

loadSelectedProfile() {
  try {
    return GeneralRepository().loadSelectedProfile();
  } catch (e) {
    print('Error verifying account details: $e');
    return null;
  }
}

 void prettyPrint(Object? object) {
  const encoder = JsonEncoder.withIndent('  ');
  final prettyString = encoder.convert(object);
  // Splitting by newline prevents console truncation on long outputs
  prettyString.split('\n').forEach(print);
}
