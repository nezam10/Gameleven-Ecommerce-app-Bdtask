import 'package:flutter/material.dart';

class CircularCheckbox extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  const CircularCheckbox(
      {Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: Checkbox(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
