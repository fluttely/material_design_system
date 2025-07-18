import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

class ShapePage extends StatelessWidget {
  const ShapePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final shapes = [
      ('None', MaterialShape.none),
      ('Extra Small', MaterialShape.extraSmall),
      ('Small', MaterialShape.small),
      ('Medium', MaterialShape.medium),
      ('Large', MaterialShape.large),
      ('Extra Large', MaterialShape.extraLarge),
      ('Full (Stadium)', MaterialShape.full),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Shape Tokens')),
      body: GridView.builder(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space24),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          mainAxisSpacing: MaterialSpacingToken.space16.value,
          crossAxisSpacing: MaterialSpacingToken.space16.value,
        ),
        itemCount: shapes.length,
        itemBuilder: (context, index) {
          final (label, shape) = shapes[index];
          return Container(
            decoration: ShapeDecoration(
              color: colorScheme.surfaceContainer,
              shape: shape,
            ),
            child: Center(
              child: Text(
                label,
                style: MaterialTypeScale.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
