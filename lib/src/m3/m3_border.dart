import 'package:flutter/material.dart';
// Assuming IM3Token is defined elsewhere, similar to previous examples.
// If not, you can define it as: abstract class IM3Token<T> { T get value; }
import 'package:material_design/material_design.dart';

/// A utility class providing static factory methods for creating [Border] objects.
///
/// This class uses [M3BorderToken] to construct various common border types
/// required in a Material Design application.
@immutable
abstract final class M3Border {
  /// Creates a standard outline border with the given color and width.
  static Border outline({
    required Color color,
    M3BorderToken width = M3BorderToken.thin,
  }) {
    return Border.all(color: color, width: width.value);
  }

  /// Creates a border with only a bottom side.
  static Border bottom({
    required Color color,
    M3BorderToken width = M3BorderToken.thin,
  }) {
    return Border(
      bottom: width.toSide(color: color),
    );
  }

  /// Creates a border with only a top side.
  static Border top({
    required Color color,
    M3BorderToken width = M3BorderToken.thin,
  }) {
    return Border(
      top: width.toSide(color: color),
    );
  }

  /// Creates a border with only vertical (left and right) sides.
  static Border vertical({
    required Color color,
    M3BorderToken width = M3BorderToken.thin,
  }) {
    return Border(
      left: width.toSide(color: color),
      right: width.toSide(color: color),
    );
  }

  /// Creates a border with only horizontal (top and bottom) sides.
  static Border horizontal({
    required Color color,
    M3BorderToken width = M3BorderToken.thin,
  }) {
    return Border(
      top: width.toSide(color: color),
      bottom: width.toSide(color: color),
    );
  }

  /// Creates a focus border with enhanced visibility.
  static Border focus({
    required Color color,
    M3BorderToken width = M3BorderToken.thick,
  }) {
    return Border.all(color: color, width: width.value);
  }

  /// Creates an error border for form validation feedback.
  static Border error({
    required Color color,
    M3BorderToken width = M3BorderToken.thick,
  }) {
    return Border.all(color: color, width: width.value);
  }

  /// Creates a disabled border with reduced opacity.
  static Border disabled({
    required Color color,
    M3BorderToken width = M3BorderToken.thin,
    double opacity = 0.38,
  }) {
    return Border.all(
      color: color.withValues(alpha: opacity),
      width: width.value,
    );
  }

  /// Creates a [Border] based on a specific [M3BorderState].
  ///
  /// This factory method simplifies applying the correct border style for
  /// different UI states (e.g., focused, disabled, error).
  ///
  /// - [color]: The base color for the border.
  /// - [state]: The UI state to represent.
  /// - [customWidth]: An optional override for the border width. If null,
  ///   the state's default width is used.
  static Border forState({
    required Color color,
    required M3BorderState state,
    M3BorderToken? customWidth,
  }) {
    final width = customWidth ?? state.defaultWidth;
    return Border.all(
      color: state.adjustColor(color),
      width: width.value,
    );
  }
}

/// {@template m3_border_state}
/// Defines different UI states that can affect a border's appearance.
/// {@endtemplate}
enum M3BorderState {
  /// The normal, resting state of a component.
  normal,

  /// The state when a pointer is over the component.
  hovered,

  /// The state when the component has input focus.
  focused,

  /// The state when the component is being actively pressed.
  pressed,

  /// The state when the component is disabled and cannot be interacted with.
  disabled,

  /// The state indicating an input error.
  error,

  /// The state indicating a successful operation or input.
  success;

  /// Gets the default [M3BorderToken] for this state.
  M3BorderToken get defaultWidth => switch (this) {
    focused || pressed || error || success => M3BorderToken.thick,
    normal || hovered || disabled => M3BorderToken.thin,
  };

  /// Adjusts the given color based on the border state.
  ///
  /// For most states, it returns the base color. For `disabled`, it
  /// applies a standard opacity reduction.
  Color adjustColor(Color baseColor) => switch (this) {
    disabled => baseColor.withValues(alpha: 0.38),
    _ => baseColor,
  };
}

/// Provides utility methods for working with [M3BorderToken] values.
extension M3BorderTokenUtils on M3BorderToken {
  /// Checks if this border width is thicker than another.
  bool isThickerThan(M3BorderToken other) => value > other.value;

  /// Checks if this border width is thinner than another.
  bool isThinnerThan(M3BorderToken other) => value < other.value;

  /// Returns the absolute difference in width between this and another border token.
  double differenceFrom(M3BorderToken other) => (value - other.value).abs();

  /// Creates a [BorderRadius] with this token's width as the radius value.
  BorderRadius asRadius() => BorderRadius.circular(value);

  /// Creates a [Radius] with this token's width.
  Radius get radius => Radius.circular(value);

  /// Checks if this border is visible (i.e., has a width greater than 0).
  bool get isVisible => value > 0;

  /// Creates an animated [BorderSide] that can transition its width.
  ///
  /// The width is calculated by multiplying the token's `value` by the
  /// animation's current value.
  BorderSide animatedSide({
    required Color color,
    required Animation<double> animation,
    BorderStyle style = BorderStyle.solid,
  }) {
    return BorderSide(
      color: color,
      width: value * animation.value,
      style: style,
    );
  }
}
