import 'package:flutter/widgets.dart';
import 'package:material_design/material_design.dart';

/// Provides Material Design 3-compliant edge insets that enforce usage
/// of the design system's spacing tokens.
///
/// This class wraps Flutter's [EdgeInsets] but only allows values from
/// [M3SpacingToken], ensuring consistent spacing throughout the app.
///
/// Reference: https://m3.material.io/foundations/layout/understanding-layout/spacing
@immutable
abstract class M3EdgeInsets {
  /// Zero insets using the design system.
  static const EdgeInsets none = EdgeInsets.zero;

  /// Creates insets with the same value for all sides.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static EdgeInsets all(M3SpacingToken token) => EdgeInsets.all(token.value);

  /// Creates insets with symmetric horizontal and vertical values.
  ///
  /// Both parameters default to [M3SpacingToken.none] for convenience.
  static EdgeInsets symmetric({
    M3SpacingToken horizontal = M3SpacingToken.none,
    M3SpacingToken vertical = M3SpacingToken.none,
  }) {
    return EdgeInsets.symmetric(
      horizontal: horizontal.value,
      vertical: vertical.value,
    );
  }

  /// Creates insets with individual values for each side.
  ///
  /// All parameters are required to enforce explicit spacing decisions.
  static EdgeInsets fromLTRB(
    M3SpacingToken left,
    M3SpacingToken top,
    M3SpacingToken right,
    M3SpacingToken bottom,
  ) {
    return EdgeInsets.fromLTRB(
      left.value,
      top.value,
      right.value,
      bottom.value,
    );
  }

  /// Creates insets with optional values for each side.
  ///
  /// Sides default to [M3SpacingToken.none] when not specified.
  static EdgeInsets only({
    M3SpacingToken left = M3SpacingToken.none,
    M3SpacingToken top = M3SpacingToken.none,
    M3SpacingToken right = M3SpacingToken.none,
    M3SpacingToken bottom = M3SpacingToken.none,
  }) {
    return EdgeInsets.only(
      left: left.value,
      top: top.value,
      right: right.value,
      bottom: bottom.value,
    );
  }
}
