import 'package:flutter/material.dart';
import 'package:genetix_toast_notifications/models/genetix_toasts.dart';
import 'package:genetix_toast_notifications/models/toast_base.dart';
import 'package:genetix_toast_notifications/toast_manager.dart';


void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Genetix Toast Demo',
      home: ToastDemoPage(),
    );
  }
}

class ToastDemoPage extends StatefulWidget {
  const ToastDemoPage({super.key});

  @override
  _ToastDemoPageState createState() => _ToastDemoPageState();
}

class _ToastDemoPageState extends State<ToastDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Genetix Toast Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _showSuccessToast(context),
              child: const Text('Show Success Toast'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showNeutralToast(context),
              child: const Text('Show Neutral Toast'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showFailureToast(context),
              child: const Text('Show Failure Toast'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSuccessToast(BuildContext context) {
    GenetixToastNotifications.showToast(context, SuccessToast(
        message: "Operation Successful! You're logged in.",
        position: ToastPosition.bottom,
        duration: ToastDuration.long,
        textAlign: TextAlign.left
    ));
  }

  void _showNeutralToast(BuildContext context) {
    GenetixToastNotifications.showToast(context, NeutralToast(
        message: "Congratulations! You're a winner.",
        position: ToastPosition.bottom,
        duration: ToastDuration.short,
        textAlign: TextAlign.left
    ));
  }

  void _showFailureToast(BuildContext context) {
    GenetixToastNotifications.showToast(context, FailureToast(
        message: "Operation Failed!", position: ToastPosition.bottom,
        duration: ToastDuration.medium,
        textAlign: TextAlign.left
    ));
  }
}