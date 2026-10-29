import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/src/model/get_save_premium_quote200_response.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:uuid/uuid.dart';
import 'package:go_router/go_router.dart';
import '../services/general_storage.dart';

Future<bool> isExpired(String value) async {
  final message = await GeneralStorageService().getMessage();
  print('message from storage at isExpired');
  print(message);
  print('message from storage at isExpired');

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

Future<GetSavePremiumQuote200Response?> getLifeQuoteEstimate(
  Map<String, dynamic> data,
) async {
  // category == 1
  if (data['name'] == EndowmentPolicy['MYHEIRSPLUS']!['name']) {
  } else if (data['name'] == EndowmentPolicy['HEIRSTRIPLEPAY']!['name']) {
    // getLifeQuoteEstimate(data);
  } else if (data['name'] == EndowmentPolicy['HEIRSTRIPLEPAY']!['name']) {
  } else if (data['name'] == SavingsPolicy['HEIRSSAVE']!['name']) {
    return GeneralRepository().getSavePremiumQuote(data);
  }
}

getLifeQuotePremium(Map<String, dynamic> data) {
  if (data['name'] = EndowmentPolicy['MYHEIRSPLUS']!['name']) {
  } else if (data['name'] = EndowmentPolicy['HEIRSTRIPLEPAY']!['name']) {
    // getLifeQuoteEstimate(data);
  } else if (data['name'] = EndowmentPolicy['HEIRSTRIPLEPAY']!['name']) {
  } else if (data['name'] = SavingsPolicy['HEIRSSAVE']!['name']) {
    return GeneralRepository().getSavePremiumQuote(data);
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
      GeneralRepository().addCustomerToLifeDocument(customerLoad).then((value) async {
        message['policy']['document'] = {'id': documentId};
        await saveMessage(context, message);
        context.go(AppRoutes.beneficiaries);
      });
    });
  } catch (e) {
    print('error in createLifePolicyDocument');
    print(e);
  }
}
