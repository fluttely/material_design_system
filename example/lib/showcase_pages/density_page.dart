import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

class DensityPage extends StatelessWidget {
  const DensityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final densities = [
      ('comfortable', MaterialDensity.comfortable),
      ('compact', MaterialDensity.compact),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Density Tokens')),
      body: ListView.separated(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space16),
        itemCount: densities.length,
        separatorBuilder: (_, __) =>
            MaterialSizedBox(height: MaterialSpacingToken.space8),
        itemBuilder: (context, index) {
          final (label, density) = densities[index];
          return Row(
            children: [
              MaterialSizedBox(
                width: MaterialSpacingToken.space112,
                child: Text(
                  '$label:',
                  style: MaterialTypeScale.bodyMedium,
                ),
              ),
              MaterialSizedBox(width: MaterialSpacingToken.space16),
              Expanded(
                child: Text(
                  density.toString(),
                  style: MaterialTypeScale.bodyMedium,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
