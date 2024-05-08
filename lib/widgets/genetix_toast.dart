import 'package:flutter/material.dart';
import 'package:genetix_toast_notifications/models/toast_base.dart';

class GenetixToast extends StatelessWidget {
  final ToastBase toast;

  const GenetixToast({super.key, required this.toast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: toast.backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(toast.icon, color: Colors.white, size: 24),
          const SizedBox(width: 8),
          Expanded(
            child: Text(toast.message,
              maxLines: 4,
              textAlign: toast.textAlign,
              style: const TextStyle(color: Colors.white, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    );
  }
}