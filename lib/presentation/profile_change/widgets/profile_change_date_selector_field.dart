import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelectorField extends StatelessWidget {
  final String label;
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateSelected;

  const DateSelectorField({
    super.key,
    required this.label,
    this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: const Color(0xFF6C63FF),
                  onPrimary: Colors.white,
                  surface: Colors.white,
                ),
                dialogTheme: Theme.of(
                  context,
                ).dialogTheme.copyWith(backgroundColor: Colors.white),
              ),
              child: child!,
            );
          },
        );
        if (picked != null) {
          onDateSelected(picked);
        }
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          prefixIcon: const Icon(Icons.calendar_today_rounded),
        ),
        child: Text(
          selectedDate != null
              ? DateFormat("dd/MM/yyyy").format(selectedDate!)
              : "Chọn ngày",
          style: TextStyle(
            color: selectedDate != null ? Colors.black87 : Colors.grey[600],
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
