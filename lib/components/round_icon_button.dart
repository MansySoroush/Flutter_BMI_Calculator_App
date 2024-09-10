import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.icon, this.onPress});

  final IconData icon;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPress != null ? () => onPress!() : null,
      constraints: const BoxConstraints.tightFor(
        width: kRoundIconButtonWidth,
        height: kRoundIconButtonHeight,
      ),
      shape: const CircleBorder(),
      fillColor: kRoundIconButtonBKColor,
      child: Icon(icon),
    );
  }
}
