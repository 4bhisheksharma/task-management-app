import 'package:flutter/material.dart';
import 'package:tms/themes/constant.dart';

class ContactDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactDetailRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: kBlueDark),
        const SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: Text(
            '$label:',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(flex: 3, child: Text(value)),
      ],
    );
  }
}
