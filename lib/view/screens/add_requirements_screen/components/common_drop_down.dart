import 'package:flutter/material.dart';

class CommonDropDown<T> extends StatelessWidget {
  const CommonDropDown({
    super.key,
    required this.items,
    required this.fn,
    required this.hintText,
    required this.onChanged,
  });

  final List<T> items;
  final String Function(T value) fn;
  final String hintText;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      hint: Text(hintText),
      items: items
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(fn(e)),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
