import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_design_system/material_design_system.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = [
      ('Display Large', MaterialTypeScale.displayLarge),
      ('Display Medium', MaterialTypeScale.displayMedium),
      ('Display Small', MaterialTypeScale.displaySmall),
      ('Headline Large', MaterialTypeScale.headlineLarge),
      ('Headline Medium', MaterialTypeScale.headlineMedium),
      ('Headline Small', MaterialTypeScale.headlineSmall),
      ('Title Large', MaterialTypeScale.titleLarge),
      ('Title Medium', MaterialTypeScale.titleMedium),
      ('Title Small', MaterialTypeScale.titleSmall),
      ('Body Large', MaterialTypeScale.bodyLarge),
      ('Body Medium', MaterialTypeScale.bodyMedium),
      ('Body Small', MaterialTypeScale.bodySmall),
      ('Label Large', MaterialTypeScale.labelLarge),
      ('Label Medium', MaterialTypeScale.labelMedium),
      ('Label Small', MaterialTypeScale.labelSmall),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Typography Scale Tokens')),
      body: ListView.builder(
        padding: MaterialEdgeInsets.all(MaterialSpacingToken.space16),
        itemCount: textStyles.length,
        itemBuilder: (context, index) {
          final (label, style) = textStyles[index];
          return MaterialPadding(
            padding: MaterialEdgeInsets.only(
              bottom: MaterialSpacingToken.space16,
            ),
            child: Text(label, style: style),
          );
        },
      ),
    );
  }
}
