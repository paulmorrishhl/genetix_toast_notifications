import 'package:genetix_toast_notifications/models/toast_base.dart';
import 'package:flutter/material.dart';

enum ToastDuration {
  short,  // 2 seconds
  medium, // 4 seconds
  long    // 6 seconds
}

// Helper function to convert enum to actual Duration
Duration getDuration(ToastDuration durationType) {
  switch (durationType) {
    case ToastDuration.short:
      return const Duration(seconds: 2);
    case ToastDuration.medium:
      return const Duration(seconds: 4);
    case ToastDuration.long:
      return const Duration(seconds: 6);
    default:
      return const Duration(seconds: 3);
  }
}

class SuccessToast extends ToastBase {
  SuccessToast({
    required super.message,
    super.icon = Icons.check,
    super.backgroundColor = Colors.green,
    super.position = ToastPosition.bottom,
    super.duration,
    super.textAlign,
  });
}

class FailureToast extends ToastBase {
  FailureToast({
    required super.message,
    super.icon = Icons.error,
    super.backgroundColor = Colors.red,
    super.position = ToastPosition.bottom,
    super.duration,
    super.textAlign,
  });
}

class NeutralToast extends ToastBase {
  NeutralToast({
    required super.message,
    super.icon = Icons.info_rounded,
    super.backgroundColor = Colors.blueGrey,
    super.position = ToastPosition.bottom,
    super.duration,
    super.textAlign,
  });
}