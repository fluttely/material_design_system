import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

class ElevationPage extends StatelessWidget {
  const ElevationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Elevation')),
      body: ListView(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space24),
        children: const [
          _ElevationShowcase(
            title: 'Surface Tint Color',
            useShadow: false,
          ),
          _ElevationShowcase(
            title: 'Surface Tint Color and Shadow',
            useShadow: true,
          ),
        ],
      ),
    );
  }
}

class _ElevationShowcase extends StatelessWidget {
  const _ElevationShowcase({
    required this.title,
    required this.useShadow,
  });

  final String title;
  final bool useShadow;

  @override
  Widget build(BuildContext context) {
    // Static elevation levels to showcase
    final elevationLevels = [
      (MaterialElevation.level0, 'Level 0', '0%'),
      (MaterialElevation.level1, 'Level 1', '5%'),
      (MaterialElevation.level2, 'Level 2', '8%'),
      (MaterialElevation.level3, 'Level 3', '11%'),
      (MaterialElevation.level4, 'Level 4', '12%'),
      (MaterialElevation.level5, 'Level 5', '14%'),
    ];

    // Static shadow definitions
    final shadowLevels = [
      MaterialShadow.level0,
      MaterialShadow.level1,
      MaterialShadow.level2,
      MaterialShadow.level3,
      MaterialShadow.level4,
      MaterialShadow.level5,
    ];

    return MaterialPadding(
      padding: MaterialEdgeInsets.only(bottom: MaterialSpacingToken.space32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: MaterialTypeScale.titleLarge),
          MaterialSizedBox(height: MaterialSpacingToken.space16),
          Wrap(
            spacing: MaterialSpacingToken.space16.value,
            runSpacing: MaterialSpacingToken.space16.value,
            children: elevationLevels.asMap().entries.map((entry) {
              final index = entry.key;
              final elevation = entry.value.$1;
              final levelName = entry.value.$2;
              final levelPercent = entry.value.$3;

              final surfaceColor = MaterialTonalColor.fromElevation(
                context,
                elevation,
              );

              final shadows = useShadow ? shadowLevels[index] : <BoxShadow>[];

              return Container(
                width: double.infinity,
                height: 120,
                decoration: ShapeDecoration(
                  color: surfaceColor,
                  shape: MaterialShape.small,
                  shadows: shadows,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialPadding(
                      padding: MaterialEdgeInsets.all(
                        MaterialSpacingToken.space8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            levelName,
                            style: MaterialTypeScale.labelMedium,
                          ),
                          Text(
                            '${elevation.toStringAsFixed(0)} dp',
                            style: MaterialTypeScale.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: MaterialPadding(
                        padding: MaterialEdgeInsets.all(
                          MaterialSpacingToken.space8,
                        ),
                        child: Text(
                          levelPercent,
                          style: MaterialTypeScale.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
