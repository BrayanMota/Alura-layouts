import 'package:alura_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.headerGradient,
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                      text: '\$',
                      children: <TextSpan>[
                        TextSpan(
                          text: '1000.00',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Balanço disponível',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const Icon(
                Icons.account_circle,
                size: 42,
              ),
            ],
          ),
        ));
  }
}
