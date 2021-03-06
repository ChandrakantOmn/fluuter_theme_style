import 'package:flutter/material.dart';

import '../../theme.dart';

class SgePrimaryFilterChip extends StatelessWidget {
  final Widget label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const SgePrimaryFilterChip({
    required this.label,
    this.selected = false,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final chipTheme = buildChipTheme(
      context,
      backgroundColor: kPrimaryColor.withOpacity(0.9),
    );
    return ChipTheme(
      data: chipTheme,
      child: FilterChip(
        label: label,
        selected: selected,
        onSelected: onSelected,
      ),
    );
  }
}
