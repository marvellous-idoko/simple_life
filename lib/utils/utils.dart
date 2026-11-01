import 'package:flutter/services.dart';
import 'package:pay_with_paystack/pay_with_paystack.dart';
import 'package:dio/src/response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/src/model/get_save_premium_quote200_response.dart';
import 'package:simple_life/Bloc__state/general_bloc.dart';
import 'package:simple_life/app_routes.dart';
import 'package:simple_life/repositories/general_repository.dart';
import 'package:simple_life/app_constants.dart/app_constants.dart';
import 'package:simple_life/utils/utils.dart';
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
      GeneralRepository().addCustomerToLifeDocument(customerLoad).then((
        value,
      ) async {
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

Future<Response<void>?> addBeneficiaryToPolicy(
  Map<String, dynamic> shareDocument,
) async {
  if (shareDocument['policyType'] == EndowmentPolicy['MYHEIRSPLUS']!['name']) {
  } else if (shareDocument['policyType'] ==
      EndowmentPolicy['HEIRSTRIPLEPAY']!['name']) {
  } else if (shareDocument['policyType'] ==
      SavingsPolicy['HEIRSSAVE']!['name']) {
    return await GeneralRepository().addBeneficiaryToPolicy(shareDocument);
  }
}

void gotoPolicySummary(BuildContext context, String type) {
  final lifePolicies = [
    EndowmentPolicy['MYHEIRSPLUS']!['name'],
    EndowmentPolicy['HEIRSTRIPLEPAY']!['name'],
    SavingsPolicy['HEIRSSAVE']!['name'],
  ];
  if (lifePolicies.contains(type)) {
    context.go(AppRoutes.lifePolicySummary);
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
    // changeMessage(message);
    print('response185');
    print(value);

    getPaymentLink(payload)
        .then((responze) async {
          print('response186');
          print(responze.key);

          PayWithPayStack.configure(PaystackConfig(
            publicKey: responze.key, // ← public key only (pk_…)
            currency: PaystackCurrency.ngn.value,
            callbackUrl: 'https://my-app.com/payment/callback',
            // enableLogging: kDebugMode, // logs in debug, silent in release
            timeout: const Duration(seconds: 120),
          ));

          await PayWithPayStack().now(
            context: context,
            customerEmail: responze.email,
            reference: payId,
            amount: double.parse( responze.amount.toString())/100,
            callbackUrl: 'https://your-backend.com/verify',
            transactionCompleted: (PaymentData data) {
              print('ref');
              print(data.reference);
              GeneralRepository().paystackCallback(data)
              .then((value){
                print(value);
              });
              print('[OK] Payment callback received for: ${data.reference}');
              // Your backend at callbackUrl verifies this server-side using the secret key.
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

getPaymentLink(Map<String, dynamic> payload) async {
  if (payload['type'] == SavingsPolicy['HEIRSSAVE']!['name']) {
    return await GeneralRepository().payForSaveDocument(payload);
  }
}

Future<Response<void>?> registerPayment(Map<String, dynamic> payload) async {
  if (payload['type'] == SavingsPolicy['HEIRSSAVE']!['name']) {
    return GeneralRepository().registerSavePayment(payload);
  }
}
