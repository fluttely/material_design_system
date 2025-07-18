import 'package:flutter/widgets.dart';
import 'package:material_design_system/material_design_system.dart';

class MaterialEdgeInsets {
  /// A convenience getter for zero insets.
  EdgeInsets get none => EdgeInsets.zero;

  static EdgeInsets all(MaterialSpacingToken token) =>
      EdgeInsets.all(token.value);

  static EdgeInsets symmetric({
    MaterialSpacingToken horizontal = MaterialSpacingToken.none,
    MaterialSpacingToken vertical = MaterialSpacingToken.none,
  }) {
    return EdgeInsets.symmetric(
      horizontal: horizontal.value,
      vertical: vertical.value,
    );
  }

  static EdgeInsets fromLTRB(
    MaterialSpacingToken left,
    MaterialSpacingToken top,
    MaterialSpacingToken right,
    MaterialSpacingToken bottom,
  ) {
    return EdgeInsets.fromLTRB(
      left.value,
      top.value,
      right.value,
      bottom.value,
    );
  }

  static EdgeInsets only({
    MaterialSpacingToken left = MaterialSpacingToken.none,
    MaterialSpacingToken top = MaterialSpacingToken.none,
    MaterialSpacingToken right = MaterialSpacingToken.none,
    MaterialSpacingToken bottom = MaterialSpacingToken.none,
  }) {
    return EdgeInsets.only(
      left: left.value,
      top: top.value,
      right: right.value,
      bottom: bottom.value,
    );
  }
}
