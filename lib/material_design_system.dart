/// Material Design 3 System Library
///
/// A comprehensive design system library that enforces usage of Material Design 3
/// tokens and metrics through type-safe resolvers and helpers.
///
/// This library provides:
/// - **Geometry resolvers**: M3EdgeInsets, M3Size, M3SizedBox, M3Padding
/// - **Color resolvers**: M3Color, M3ColorSchemeResolver
/// - **Typography resolvers**: M3TextStyle, M3TextTheme
/// - **Elevation resolvers**: M3Elevation
/// - **Shape resolvers**: M3BorderRadius
/// - **Motion resolvers**: M3Animation
///
/// All resolvers force usage of design system tokens to ensure consistency
/// and prevent arbitrary values throughout the app.
library;

export 'src/ds/extensions/m3_widget_extensions.dart';
export 'src/ds/resolvers/resolvers.dart';
export 'src/ds/theme/theme.dart';
export 'src/ds/tokens/tokens.dart';
export 'src/m3/m3.dart';
