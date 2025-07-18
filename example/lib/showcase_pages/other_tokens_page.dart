import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

class OtherTokensPage extends StatelessWidget {
  const OtherTokensPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Other Tokens')),
      body: ListView(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space16),
        children: [
          _buildBorderSection(context),
          MaterialSizedBox(height: MaterialSpacingToken.space32),
          _buildOpacitySection(context),
          MaterialSizedBox(height: MaterialSpacingToken.space32),
          _buildBreakpointSection(context),
          MaterialSizedBox(height: MaterialSpacingToken.space32),
          _buildIconSizeSection(context),
          MaterialSizedBox(height: MaterialSpacingToken.space32),
          _buildZIndexSection(context),
        ],
      ),
    );
  }

  Widget _buildBreakpointSection(BuildContext context) {
    final breakpoints = [
      ('Compact', MaterialBreakpoint.compact),
      ('Medium', MaterialBreakpoint.medium),
      ('Expanded', MaterialBreakpoint.expanded),
      ('Large', MaterialBreakpoint.large),
      ('Extra Large', MaterialBreakpoint.extraLarge),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Breakpoints', style: MaterialTypeScale.titleLarge),
        MaterialSizedBox(height: MaterialSpacingToken.space16),
        Wrap(
          spacing: MaterialSpacingToken.space16.value,
          runSpacing: MaterialSpacingToken.space16.value,
          children: breakpoints.map((breakpoint) {
            final (label, value) = breakpoint;
            return Chip(
              label: Text('$label (${value.toInt()}dp)'),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildIconSizeSection(BuildContext context) {
    final iconSizes = [
      ('Standard', MaterialIconSize.standard),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Icon Sizes', style: MaterialTypeScale.titleLarge),
        MaterialSizedBox(height: MaterialSpacingToken.space16),
        Wrap(
          spacing: MaterialSpacingToken.space16.value,
          runSpacing: MaterialSpacingToken.space16.value,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: iconSizes.map((iconSize) {
            final (label, value) = iconSize;
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite, size: value),
                MaterialSizedBox(width: MaterialSpacingToken.space8),
                Text('$label (${value.toInt()}dp)'),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildZIndexSection(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final zIndexes = [
      ('Content', MaterialZIndex.content),
      ('Floating', MaterialZIndex.floating),
      ('Drawer', MaterialZIndex.drawer),
      ('Modal', MaterialZIndex.modal),
      ('Snackbar', MaterialZIndex.snackbar),
      ('Tooltip', MaterialZIndex.tooltip),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Z-Index', style: MaterialTypeScale.titleLarge),
        MaterialSizedBox(height: MaterialSpacingToken.space16),
        MaterialSizedBox(
          height: MaterialSpacingToken.space144,
          child: Stack(
            children: zIndexes.map((zIndex) {
              final (label, value) = zIndex;
              final position = zIndexes.indexOf(zIndex) * 20.0;
              return Positioned(
                left: position,
                top: position,
                child: Container(
                  width: 100,
                  height: 100,
                  color: colorScheme.primary.withOpacity(0.8),
                  child: Center(
                    child: Text(
                      '$label\n(z: $value)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildBorderSection(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final borders = [
      ('Thin', MaterialBorder.thin),
      // ('Thick', MaterialBorder.thick),
      // ('Extra Thick', MaterialBorder.extraThick),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Borders', style: MaterialTypeScale.titleLarge),
        MaterialSizedBox(height: MaterialSpacingToken.space16),
        Wrap(
          spacing: MaterialSpacingToken.space16.value,
          children: borders.map((border) {
            final (label, width) = border;
            return Container(
              padding: MaterialEdgeInsets.all(MaterialSpacingToken.space16),
              decoration: BoxDecoration(
                border: Border.all(width: width, color: colorScheme.primary),
                borderRadius: BorderRadius.circular(MaterialRadius.small),
              ),
              child: Text('$label (${width}dp)'),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildOpacitySection(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final opacities = [
      ('Hover', MaterialOpacity.hover),
      ('Focus', MaterialOpacity.focus),
      ('Pressed', MaterialOpacity.pressed),
      ('Dragged', MaterialOpacity.dragged),
      ('Disabled Content', MaterialOpacity.disabledContent),
      ('Disabled Container', MaterialOpacity.disabledContainer),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Opacities (State Layers)',
          style: MaterialTypeScale.titleLarge,
        ),
        MaterialSizedBox(height: MaterialSpacingToken.space16),
        Wrap(
          spacing: MaterialSpacingToken.space16.value,
          runSpacing: MaterialSpacingToken.space16.value,
          children: opacities.map((opacity) {
            final (label, value) = opacity;
            return Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                color: colorScheme.primary.withValues(alpha: value),
                borderRadius: BorderRadius.circular(MaterialRadius.small),
              ),
              child: Center(
                child: Text(
                  '$label\n($value)',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
