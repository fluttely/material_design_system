import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // Organize colorScheme as seen in the Flutter demo site
    final keyColors = [
      ('Primary', colorScheme.primary, colorScheme.onPrimary),
      ('Secondary', colorScheme.secondary, colorScheme.onSecondary),
      ('Tertiary', colorScheme.tertiary, colorScheme.onTertiary),
      ('Error', colorScheme.error, colorScheme.onError),
    ];

    final allColors = [
      (
        'Primary Container',
        colorScheme.primaryContainer,
        colorScheme.onPrimaryContainer,
      ),
      ('On Primary', colorScheme.onPrimary, colorScheme.primary),
      (
        'Secondary Container',
        colorScheme.secondaryContainer,
        colorScheme.onSecondaryContainer,
      ),
      ('On Secondary', colorScheme.onSecondary, colorScheme.secondary),
      (
        'Tertiary Container',
        colorScheme.tertiaryContainer,
        colorScheme.onTertiaryContainer,
      ),
      ('On Tertiary', colorScheme.onTertiary, colorScheme.tertiary),
      (
        'Error Container',
        colorScheme.errorContainer,
        colorScheme.onErrorContainer,
      ),
      ('On Error', colorScheme.onError, colorScheme.error),
      ('Surface Dim', colorScheme.surfaceDim, colorScheme.onSurface),
      ('Surface', colorScheme.surface, colorScheme.onSurface),
      ('Surface Bright', colorScheme.surfaceBright, colorScheme.onSurface),
      (
        'Surface Container Lowest',
        colorScheme.surfaceContainerLowest,
        colorScheme.onSurface,
      ),
      (
        'Surface Container Low',
        colorScheme.surfaceContainerLow,
        colorScheme.onSurface,
      ),
      (
        'Surface Container',
        colorScheme.surfaceContainer,
        colorScheme.onSurface,
      ),
      (
        'Surface Container High',
        colorScheme.surfaceContainerHigh,
        colorScheme.onSurface,
      ),
      (
        'Surface Container Highest',
        colorScheme.surfaceContainerHighest,
        colorScheme.onSurface,
      ),
      ('On Surface', colorScheme.onSurface, colorScheme.surface),
      ('On Surface Variant', colorScheme.onSurfaceVariant, colorScheme.surface),
      ('Outline', colorScheme.outline, colorScheme.surface),
      ('Outline Variant', colorScheme.outlineVariant, colorScheme.surface),
      (
        'Inverse Surface',
        colorScheme.inverseSurface,
        colorScheme.onInverseSurface,
      ),
      (
        'On Inverse Surface',
        colorScheme.onInverseSurface,
        colorScheme.inverseSurface,
      ),
      ('Inverse Primary', colorScheme.inversePrimary, colorScheme.onPrimary),
      ('Surface Tint', colorScheme.surfaceTint, colorScheme.onSurface),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Color System')),
      body: SingleChildScrollView(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Key Colors', style: MaterialTypeScale.titleLarge),
                  MaterialSizedBox(height: MaterialSpacingToken.space16),
                  ...keyColors.map(
                    (p) =>
                        _KeyColorChip(name: p.$1, color: p.$2, onColor: p.$3),
                  ),
                ],
              ),
            ),
            MaterialSizedBox(width: MaterialSpacingToken.space24),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Color Scheme', style: MaterialTypeScale.titleLarge),
                  MaterialSizedBox(height: MaterialSpacingToken.space16),
                  Wrap(
                    spacing: MaterialSpacingToken.space8.value,
                    runSpacing: MaterialSpacingToken.space8.value,
                    children: allColors
                        .map(
                          (p) => _ColorChip(
                            name: p.$1,
                            color: p.$2,
                            onColor: p.$3,
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _KeyColorChip extends StatelessWidget {
  const _KeyColorChip({
    required this.name,
    required this.color,
    required this.onColor,
  });
  final String name;
  final Color color;
  final Color onColor;

  String _colorToHex(Color color) =>
      '#${color.value.toRadixString(16).substring(2).toUpperCase()}';

  @override
  Widget build(BuildContext context) {
    return MaterialPadding(
      padding: MaterialEdgeInsets.only(bottom: MaterialSpacingToken.space8),
      child: Container(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(MaterialRadius.medium),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: MaterialTypeScale.titleMedium.copyWith(color: onColor),
            ),
            Text(
              _colorToHex(color),
              style: MaterialTypeScale.bodyMedium.copyWith(color: onColor),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorChip extends StatelessWidget {
  const _ColorChip({
    required this.name,
    required this.color,
    required this.onColor,
  });
  final String name;
  final Color color;
  final Color onColor;

  String _colorToHex(Color color) =>
      '#${color.value.toRadixString(16).substring(2).toUpperCase()}';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: 150,
      padding: MaterialEdgeInsets.all(MaterialSpacingToken.space8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(MaterialRadius.small),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: MaterialTypeScale.labelLarge.copyWith(color: onColor),
          ),
          Text(
            _colorToHex(color),
            style: MaterialTypeScale.labelSmall.copyWith(color: onColor),
          ),
        ],
      ),
    );
  }
}
