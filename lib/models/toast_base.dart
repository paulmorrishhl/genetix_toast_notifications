import 'package:flutter/material.dart';
import 'package:genetix_toast_notifications/models/genetix_toasts.dart';

// Our Base class for all toast notification types

enum ToastPosition { top, bottom }

abstract class ToastBase {
  final String message;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final ToastPosition position;
  final ToastDuration duration;
  final TextAlign textAlign;
  final TextStyle? textStyle;

  ToastBase({
    required this.message,
    required this.icon,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.green,
    this.position = ToastPosition.bottom,
    this.duration = ToastDuration.medium,
    this.textAlign = TextAlign.left,
    this.textStyle,
  });
}