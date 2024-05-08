import 'package:flutter/material.dart';
import 'package:genetix_toast_notifications/models/genetix_toasts.dart';
import 'package:genetix_toast_notifications/widgets/genetix_toast.dart';
import 'package:genetix_toast_notifications/models/toast_base.dart';

class GenetixToastNotifications {
  static OverlayEntry? _currentToast;

  static void showToast(BuildContext context, ToastBase toast) {
    // Remove any existing toast
    _currentToast?.remove();

    // Create a new OverlayEntry
    _currentToast = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned(
            top: toast.position == ToastPosition.top ? 50 : null,
            bottom: toast.position == ToastPosition.bottom ? 50 : null,
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Material(
              color: Colors.transparent,
              elevation: 0,
              child: GenetixToast(toast: toast),
            ),
          ),
        ],
      ),
    );

    // Insert the new OverlayEntry into the Overlay
    Overlay.of(context)!.insert(_currentToast!);

    // Schedule the toast to disappear after the specified duration
    Future.delayed(getDuration(toast.duration), () {
      _currentToast?.remove();
      _currentToast = null;
    });
  }
}