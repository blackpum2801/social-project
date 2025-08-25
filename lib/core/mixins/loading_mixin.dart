import 'package:flutter/material.dart';

mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  bool _isLoading = false;

  void showLoading() {
    if (!_isLoading && mounted) {
      _isLoading = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => const Center(child: CircularProgressIndicator()),
      );
    }
  }

  void hideLoading() {
    if (_isLoading && mounted) {
      _isLoading = false;
      Navigator.of(context, rootNavigator: true).pop();
    }
  }
}
