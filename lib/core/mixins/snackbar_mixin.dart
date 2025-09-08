import 'package:flutter/material.dart';

mixin SnackbarMixin<T extends StatefulWidget> on State<T> {
  void showSuccessSnackBar(String message) {
    _showSnackBar(message: message, icon: Icons.check, color: Colors.green);
  }

  void showErrorSnackBar(String message) {
    _showSnackBar(
      message: message,
      icon: Icons.error_outline,
      color: Colors.red,
    );
  }

  void _showSnackBar({
    required String message,
    required IconData icon,
    required Color color,
  }) {
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 16),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.all(16),
      ),
    );
  }
}
