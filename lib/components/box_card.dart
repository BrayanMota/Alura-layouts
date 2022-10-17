import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContect;

  const BoxCard({
    Key? key,
    required this.boxContect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
      ),
      child: boxContect,
    );
  }
}
