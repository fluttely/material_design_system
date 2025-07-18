import 'package:flutter/widgets.dart';
// Assuming MaterialSpacingToken is available from your design system package.
import 'package:material_design_system/material_design_system.dart';

/// A widget that applies padding using type-safe [MaterialSpacingToken]s.
///
/// This widget follows the composition pattern by wrapping Flutter's `Padding`
/// widget, ensuring that only spacing values from the design system are used.
class MaterialPadding extends StatelessWidget {
  /// Private constructor used by the factories.
  const MaterialPadding({
    required this.padding,
    this.child,
    super.key,
  });

  /// The padding to apply. This is constructed internally by the factories.
  final EdgeInsetsGeometry padding;

  /// The widget below this widget in the tree.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    // This widget COMPOSES the original Padding widget.
    // It is not a subtype of it.
    return Padding(
      padding: padding,
      child: child,
    );
  }
}
