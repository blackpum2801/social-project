import 'package:flutter/material.dart';

class ProfileBottomSheetAction {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  ProfileBottomSheetAction({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}

Future<void> showAppBottomSheet({
  required BuildContext context,
  required List<ProfileBottomSheetAction> actions,
  String? title,
}) {
  return showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ...actions.map(
              (action) => ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey[200],
                  child: Icon(action.icon, color: Colors.black87),
                ),
                title: Text(action.title, style: const TextStyle(fontSize: 15)),
                onTap: () {
                  Navigator.pop(context);
                  action.onTap();
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
