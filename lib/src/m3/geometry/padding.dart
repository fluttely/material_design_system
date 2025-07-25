import 'package:flutter/widgets.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

/// Provides Material Design 3-compliant padding that enforces usage
/// of the design system's spacing tokens.
///
/// This class wraps Flutter's [Padding] but only allows values from
/// [M3SpacingToken], ensuring consistent padding throughout the app.
///
/// Reference: https://m3.material.io/foundations/layout/understanding-layout/spacing
@immutable
abstract class M3Padding {
  /// Creates a Padding widget with all sides padded by the same token.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Widget all({
    required M3SpacingToken padding,
    Key? key,
    Widget? child,
  }) {
    return Padding(
      key: key,
      padding: M3EdgeInsets.all(padding),
      child: child,
    );
  }

  /// Creates a Padding widget with symmetric horizontal and vertical padding.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Widget symmetric({
    Key? key,
    M3SpacingToken horizontal = M3SpacingToken.none,
    M3SpacingToken vertical = M3SpacingToken.none,
    Widget? child,
  }) {
    return Padding(
      key: key,
      padding: M3EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: child,
    );
  }

  /// Creates a Padding widget with individual padding for each side.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Widget only({
    Key? key,
    M3SpacingToken left = M3SpacingToken.none,
    M3SpacingToken top = M3SpacingToken.none,
    M3SpacingToken right = M3SpacingToken.none,
    M3SpacingToken bottom = M3SpacingToken.none,
    Widget? child,
  }) {
    return Padding(
      key: key,
      padding: M3EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: child,
    );
  }

  /// Creates a Padding widget using M3EdgeInsets directly.
  ///
  /// Provides flexibility while maintaining design system consistency.
  static Widget fromEdgeInsets({
    required EdgeInsets padding,
    Key? key,
    Widget? child,
  }) {
    return Padding(
      key: key,
      padding: padding,
      child: child,
    );
  }
}
