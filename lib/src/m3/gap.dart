import 'package:flutter/widgets.dart';
import 'package:material_design/material_design.dart';

class M3Gap extends StatelessWidget {
  const M3Gap(
    this.spacing, {
    super.key,
  });

  final M3SpacingToken spacing;

  @override
  Widget build(BuildContext context) {
    final effectiveAxis = _getAxis(context);

    if (effectiveAxis == null) {
      throw FlutterError(
        'A Gap widget must be placed inside a Flex widget (Row, Column) or have its axis specified.',
      );
    }

    return SizedBox(
      width: effectiveAxis == Axis.horizontal ? spacing.value : null,
      height: effectiveAxis == Axis.vertical ? spacing.value : null,
    );
  }

  Axis? _getAxis(BuildContext context) {
    final flex = context.findAncestorWidgetOfExactType<Flex>();
    return flex?.direction;
  }
}
