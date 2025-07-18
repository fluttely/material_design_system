import 'package:flutter/widgets.dart';
import 'package:material_design_system/material_design_system.dart';

/// An immutable 2D size using type-safe [MaterialSpacingToken]s,
/// compliant with the M3 specification.
///
/// This class is a wrapper around Flutter's [Size] that ensures
/// dimensions are sourced from the design system's spacing scale.
class MaterialSize extends Size {
  /// Creates an MaterialSize with the dimensions specified by tokens.
  MaterialSize(
    MaterialSpacingToken width,
    MaterialSpacingToken height,
  ) : super(width.value, height.value);

  /// Creates a square MaterialSize where the width and height are the same.
  MaterialSize.square(MaterialSpacingToken dimension)
    : super.square(dimension.value);

  /// Creates an MaterialSize with the given width and an infinite height.
  MaterialSize.fromWidth(MaterialSpacingToken width)
    : super.fromWidth(width.value);

  /// Creates an MaterialSize with the given height and an infinite width.
  MaterialSize.fromHeight(MaterialSpacingToken height)
    : super.fromHeight(height.value);

  /// Creates an MaterialSize and initializes its width and height from the
  /// given radius token.
  MaterialSize.fromRadius(MaterialSpacingToken radius)
    : super.fromRadius(radius.value);
}
