import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static const appName = 'First Mile Club';
  static const appShortName = 'FMC';
  static const bundleID = '';

  // Backend **************************************************************
  static const useProductionServerInDebug = false;
  static final serverBaseUrl = _required(
    kDebugMode && !useProductionServerInDebug
        ? 'SERVER_BASE_URL_DEV'
        : 'SERVER_BASE_URL',
  );

  static String _required(String key) {
    final value = dotenv.env[key];
    if (value == null || value.isEmpty) {
      throw StateError('Missing required env variable: $key');
    }
    return value;
  }
}
