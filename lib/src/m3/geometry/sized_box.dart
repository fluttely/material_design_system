import 'package:flutter/widgets.dart';
import 'package:material_design/material_design.dart';

/// Provides Material Design 3-compliant sized boxes that enforce usage
/// of the design system's spacing tokens.
///
/// This class wraps Flutter's [SizedBox] but only allows dimensions from
/// [M3SpacingToken], ensuring consistent sizing throughout the app.
///
/// Reference: https://m3.material.io/foundations/layout/understanding-layout/spacing
@immutable
class M3SizedBox {
  /// Creates a SizedBox with specific dimensions using spacing tokens.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Widget fromTokens({
    Key? key,
    M3SpacingToken? width,
    M3SpacingToken? height,
    Widget? child,
  }) {
    return SizedBox(
      key: key,
      width: width?.value,
      height: height?.value,
      child: child,
    );
  }

  /// Creates a SizedBox that expands to fill its parent.
  static Widget expand({Key? key, Widget? child}) {
    return SizedBox.expand(
      key: key,
      child: child,
    );
  }

  /// Creates a SizedBox that tries to be as small as possible.
  static Widget shrink({Key? key, Widget? child}) {
    return SizedBox.shrink(
      key: key,
      child: child,
    );
  }

  /// Creates a square SizedBox using a single spacing token.
  ///
  /// Forces usage of [M3SpacingToken] to ensure consistency.
  static Widget square({
    required M3SpacingToken dimension,
    Key? key,
    Widget? child,
  }) {
    return SizedBox(
      key: key,
      width: dimension.value,
      height: dimension.value,
      child: child,
    );
  }
}
