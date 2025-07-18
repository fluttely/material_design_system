# Material Design System

A Flutter package to provide a consistent and easy-to-use design system based on Material Design 3 tokens.

---

## Overview

This package exposes Material 3 design tokens (like spacing, sizes, shapes, etc.) in a semantic and type-safe way, allowing you to build consistent UIs with Material Design 3 more efficiently.

It also includes widgets that consume these tokens directly, such as `MaterialPadding` and `MaterialSizedBox`.

---

## Installation

Add this line to your project's `pubspec.yaml`:

```yaml
dependencies:
  material_design_system: ^0.0.1
```

---

## Usage

Import the package to use the tokens and widgets.

```dart
import 'package:material_design_system/material_design_system.dart';
```

### Example: Using Token-Based Widgets

Instead of using hardcoded values, you can use spacing tokens for `Padding` and `SizedBox`:

```dart
// Padding with tokens
MaterialPadding.all(
  spacing: MaterialSpacingToken.space16,
  child: YourWidget(),
),

// SizedBox with tokens
MaterialSizedBox.expand(
  width: MaterialSpacingToken.space64,
  height: MaterialSpacingToken.space32,
  child: YourWidget(),
),
```

---

## Example App

The project includes a complete example app that demonstrates all available design tokens and how to use them. To run it, navigate to the `example` folder and run `flutter run`.

```bash
cd example
flutter run
```

The example app includes:

- A Material 3 color scheme viewer.
- Demonstrations of typography, shape, spacing, elevation, and density tokens.
- A color picker to dynamically change the theme's seed color.
