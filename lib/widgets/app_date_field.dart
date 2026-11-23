import 'package:flutter/material.dart';
import 'package:simple_life/colors/app_colors.dart';

class AppDateField extends StatelessWidget {
  const AppDateField({
    required this.label,
    required this.value,
    required this.onChanged,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.validator,
    this.bottomPadding = 14,
    super.key,
  });

  final String label;
  final DateTime? value;
  final ValueChanged<DateTime> onChanged;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final FormFieldValidator<DateTime>? validator;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final minimumDate = firstDate ?? DateTime(1900);
    final maximumDate = lastDate ?? now;
    final pickerInitialDate = _clampDate(
      value ?? initialDate ?? maximumDate,
      minimumDate,
      maximumDate,
    );

    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: FormField<DateTime>(
        key: ValueKey(value),
        initialValue: value,
        validator: validator ?? (date) => date == null ? 'Select a date' : null,
        builder: (field) {
          return InkWell(
            onTap: () async {
              final selected = await showDatePicker(
                context: context,
                initialDate: pickerInitialDate,
                firstDate: minimumDate,
                lastDate: maximumDate,
                builder: (context, child) {
                  final theme = Theme.of(context);
                  return Theme(
                    data: theme.copyWith(
                      colorScheme: theme.colorScheme.copyWith(
                        primary: AppColors.primary,
                        onPrimary: Colors.white,
                        surface: Colors.white,
                        onSurface: AppColors.textColor,
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              if (selected == null) return;

              field.didChange(selected);
              onChanged(selected);
            },
            borderRadius: BorderRadius.circular(12),
            child: InputDecorator(
              decoration: _decoration(label)
                  .copyWith(errorText: field.errorText),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      value == null ? 'Select date' : formatAppDate(value!),
                      style: TextStyle(
                        color: value == null
                            ? const Color(0xFFAEB3BC)
                            : AppColors.textColor,
                      ),
                    ),
                  ),
                  const Icon(Icons.calendar_month_outlined, size: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  static DateTime _clampDate(
    DateTime date,
    DateTime minimum,
    DateTime maximum,
  ) {
    if (date.isBefore(minimum)) return minimum;
    if (date.isAfter(maximum)) return maximum;
    return date;
  }
  static InputDecoration _decoration(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
      ),
    );
  }
}

String formatAppDate(DateTime value) {
  return '${value.year}-${value.month.toString().padLeft(2, '0')}-'
      '${value.day.toString().padLeft(2, '0')}';
}
