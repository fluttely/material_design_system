// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:material_design/material_design.dart';

/// A semantic and type-safe representation of the Material Design 3 spacing scale.
///
/// Using an enum instead of a class of constants prevents the accidental use
/// of arbitrary `double` values. Each token explicitly holds its `double` value.
///
/// To get the numeric value, use `.value`. For example:
/// `MaterialEdgeInsets.all(MaterialSpacingToken.space16.value)`
enum MaterialSpacingToken {
  // --- Standard Scale (4dp increments) ---
  none(MaterialSpacing.none),
  // infinity(MaterialSpacing.infinity),
  infinity(double.infinity),
  space4(MaterialSpacing.space4),
  space8(MaterialSpacing.space8),
  space12(MaterialSpacing.space12),
  space16(MaterialSpacing.space16),
  space20(MaterialSpacing.space20),
  space24(MaterialSpacing.space24),
  space28(MaterialSpacing.space28),
  space32(MaterialSpacing.space32),
  space36(MaterialSpacing.space36),
  space40(MaterialSpacing.space40),
  space44(MaterialSpacing.space44),
  space48(MaterialSpacing.space48),
  space52(MaterialSpacing.space52),
  space56(MaterialSpacing.space56),
  space60(MaterialSpacing.space60),
  space64(MaterialSpacing.space64),

  // --- Extended Scale (8dp increments) ---
  space72(MaterialSpacing.space72),
  space80(MaterialSpacing.space80),
  space88(MaterialSpacing.space88),
  space96(MaterialSpacing.space96),
  space104(MaterialSpacing.space104),
  space112(MaterialSpacing.space112),
  space120(MaterialSpacing.space120),
  space128(MaterialSpacing.space128),

  // --- Large Scale (16dp increments) ---
  space144(MaterialSpacing.space144),
  space160(MaterialSpacing.space160),
  space176(MaterialSpacing.space176),
  space192(MaterialSpacing.space192),
  space208(MaterialSpacing.space208),
  space224(MaterialSpacing.space224),
  space240(MaterialSpacing.space240),
  space256(MaterialSpacing.space256),

  // --- Extra Large Scale ---
  space320(MaterialSpacing.space320),
  space384(MaterialSpacing.space384),
  space448(MaterialSpacing.space448),
  space512(MaterialSpacing.space512);

  /// Creates a spacing token with a specific numeric value.
  const MaterialSpacingToken(this.value);

  /// The final `double` value of the spacing token.
  final double value;
}
