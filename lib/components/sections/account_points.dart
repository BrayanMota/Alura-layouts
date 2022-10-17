import 'package:alura_layouts/components/color_dot.dart';
import 'package:alura_layouts/components/content_division.dart';
import 'package:alura_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

import '../box_card.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(
            boxContect: _AccountPointsContent(),
          ),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pontos totais:'),
        SizedBox(height: 4),
        Text('3000', style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: 4),
        ContentDivision(),
        SizedBox(height: 4),
        Text('Objetivos:', style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 4),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(
                color: ThemeColors.recentActivity['free'],
              ),
            ),
            Text('Entrega grátis: 15000pts'),
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(
                color: ThemeColors.recentActivity['streaming'],
              ),
            ),
            Text('1 mês de streaming: 30000pts'),
          ],
        )
      ],
    );
  }
}
