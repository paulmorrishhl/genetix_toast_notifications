import 'package:flutter/material.dart';
import 'package:genetix_toast_notifications/models/toast_base.dart';

class GenetixToast extends StatelessWidget {
  final ToastBase toast;

  const GenetixToast({super.key, required this.toast});

  @override
  Widget build(BuildContext context) {
    // Media query to get the screen width.
    double screenWidth = MediaQuery.of(context).size.width;

    return Center( // Center the toast horizontally
      child: Container(
        constraints: BoxConstraints(
          maxWidth: screenWidth - 20, // Set a maximum width with a margin
          minWidth: 100, // Minimum width if needed
        ),
        margin: const EdgeInsets.all(20), // Margin around the toast for clear spacing
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: toast.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 8,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: IntrinsicWidth(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(toast.icon, color: toast.iconColor, size: 24),
              const SizedBox(width: 8),
              Flexible( // Allows text to wrap if it goes beyond the width
                child: Text(
                  toast.message,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: toast.textStyle ?? const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}