import 'package:flutter/widgets.dart';
import 'package:material_design_system/material_design_system.dart';

/// A box with a specified size, using type-safe [MaterialSpacingToken]s
/// from the M3 design system.
///
/// This widget is a wrapper around Flutter's [SizedBox] that ensures
/// dimensions are sourced from the design system's spacing scale.
///
/// It provides factory constructors (`.expand`, `.shrink`, `.fromSize`) that
/// mirror the original [SizedBox] API for full compatibility.
class MaterialSizedBox extends StatelessWidget {
  /// Creates a box of a specific size using spacing tokens.
  ///
  /// If only one of `width` or `height` is non-null, the box will be sized
  /// in that dimension, and the other dimension will be unconstrained.
  factory MaterialSizedBox({
    Key? key,
    MaterialSpacingToken? width,
    MaterialSpacingToken? height,
    Widget? child,
  }) {
    return MaterialSizedBox._(
      key: key,
      width: width?.value,
      height: height?.value,
      child: child,
    );
  }

  /// Private constructor used by the factories.
  const MaterialSizedBox._({
    super.key,
    this.width,
    this.height,
    this.child,
  });

  /// Creates a box that expands to fill its parent in both dimensions.
  factory MaterialSizedBox.expand({Key? key, Widget? child}) {
    return MaterialSizedBox._(
      key: key,
      width: double.infinity,
      height: double.infinity,
      child: child,
    );
  }

  /// Creates a box that tries to be as small as possible.
  factory MaterialSizedBox.shrink({Key? key, Widget? child}) {
    return MaterialSizedBox._(
      key: key,
      width: 0,
      height: 0,
      child: child,
    );
  }

  /// Creates a box with the dimensions specified by `widthToken` and `heightToken`.
  factory MaterialSizedBox.fromSize({
    Key? key,
    MaterialSpacingToken? widthToken,
    MaterialSpacingToken? heightToken,
    Widget? child,
  }) {
    final size = Size(widthToken?.value ?? 0.0, heightToken?.value ?? 0.0);
    return MaterialSizedBox._(
      key: key,
      width: size.width,
      height: size.height,
      child: child,
    );
  }

  /// The width of the box.
  final double? width;

  /// The height of the box.
  final double? height;

  /// The widget below this widget in the tree.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
