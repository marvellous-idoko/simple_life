import '../app_constants.dart/app_constants.dart';
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