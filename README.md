# Genetix Toast Notifications

A customizable Flutter package for displaying toast notifications. This package allows easy integration of toast notifications into your Flutter applications with support for predefined duration settings and multiple display positions.

## Features

- **Customizable Toasts**: Style your toasts with options for colors, icons, and text.
- **Predefined Durations**: Choose from predefined durations such as short (2 seconds), medium (3 seconds), and long (5 seconds).
- **Position Flexibility**: Display toasts at the top, bottom, or center of the screen.
- **Easy Integration**: Simple API for showing toasts with minimal configuration.

## Getting Started

A simple example of how to use:

```dart
void _showSuccessToast(BuildContext context) {
    GenetixToastNotifications.showToast(context, SuccessToast(
        message: "Operation Successful! You're logged in.",
        position: ToastPosition.bottom,
        duration: ToastDuration.long,
        textAlign: TextAlign.left
    ));
  }
```
```dart
void _showFailureToast(BuildContext context) {
    GenetixToastNotifications.showToast(context, FailureToast(
        message: "Operation Failed! Please try again.",
        position: ToastPosition.bottom,
        duration: ToastDuration.long,
        textAlign: TextAlign.left
    ));
  }
```
```dart
void _showNeutralToast(BuildContext context) {
    GenetixToastNotifications.showToast(context, NeutralToast(
        message: "Thank you! Welcome to Las Vegas!",
        position: ToastPosition.bottom,
        duration: ToastDuration.long,
        textAlign: TextAlign.left
    ));
  }
```
