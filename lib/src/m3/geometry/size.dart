import 'package:flutter/widgets.dart';
import 'package:material_design/material_design.dart';

/// Provides Material Design 3-compliant size values that enforce usage
/// of the design system's spacing tokens.
///
/// This class wraps Flutter's [Size] but only allows values from
/// [M3SpacingToken], ensuring consistent dimensions throughout the app.
///
/// Reference: https://m3.material.io/foundations/layout/understanding-layout/spacing
@immutable
abstract class M3Size {
  /// Zero size using the design system.
  static const Size zero = Size.zero;

  /// Infinite size using the design system.
  static const Size infinite = Size.infinite;

  /// Creates a Size with the dimensions specified by tokens.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Size fromTokens(
    M3SpacingToken width,
    M3SpacingToken height,
  ) => Size(width.value, height.value);

  /// Creates a square Size where the width and height are the same.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Size square(M3SpacingToken dimension) => Size.square(dimension.value);

  /// Creates a Size with the given width and an infinite height.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Size fromWidth(M3SpacingToken width) => Size.fromWidth(width.value);

  /// Creates a Size with the given height and an infinite width.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Size fromHeight(M3SpacingToken height) =>
      Size.fromHeight(height.value);

  /// Creates a Size and initializes its width and height from the
  /// given radius token.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Size fromRadius(M3SpacingToken radius) =>
      Size.fromRadius(radius.value);
}
