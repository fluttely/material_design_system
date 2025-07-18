import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final spacings = [
      ('space4', MaterialSpacingToken.space4),
      ('space8', MaterialSpacingToken.space8),
      ('space12', MaterialSpacingToken.space12),
      ('space16', MaterialSpacingToken.space16),
      ('space24', MaterialSpacingToken.space24),
      ('space32', MaterialSpacingToken.space32),
      ('space40', MaterialSpacingToken.space40),
      ('space48', MaterialSpacingToken.space48),
      ('space64', MaterialSpacingToken.space64),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spacing Tokens')),
      body: ListView.separated(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space16),
        itemCount: spacings.length,
        separatorBuilder: (_, __) =>
            MaterialSizedBox(height: MaterialSpacingToken.space8),
        itemBuilder: (context, index) {
          final (label, height) = spacings[index];
          return Row(
            children: [
              MaterialSizedBox(
                width: MaterialSpacingToken.space112,
                child: Text(
                  '$label (${height}dp):',
                  style: MaterialTypeScale.bodyMedium,
                ),
              ),
              MaterialSizedBox(width: MaterialSpacingToken.space16),
              Expanded(
                child: Container(
                  height: height.value,
                  decoration: BoxDecoration(
                    color: colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(
                      MaterialRadius.extraSmall,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
