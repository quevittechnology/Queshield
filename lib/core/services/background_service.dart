import 'package:flutter/foundation.dart';

/// Background service stub - actual implementation disabled
/// Original flutter_background_service package is disabled in pubspec.yaml
class BackgroundService {
  static final BackgroundService instance = BackgroundService._internal();
  factory BackgroundService() => instance;
  BackgroundService._internal();

  /// Initialize background service (stub)
  Future<void> init() async {
    if (kDebugMode) {
      print('BackgroundService: Stub implementation - no background service running');
    }
  }

  /// Start service (stub)
  Future<void> startService() async {
    if (kDebugMode) {
      print('BackgroundService: Start service called (stub)');
    }
  }

  /// Stop service (stub)
  Future<void> stopService() async {
    if (kDebugMode) {
      print('BackgroundService: Stop service called (stub)');
    }
  }

  /// Check if service is running (stub - always returns false)
  Future<bool> isServiceRunning() async {
    return false;
  }
}
