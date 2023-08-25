import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.colorList = const [
      Color(0xff5936b4),
      Color(0xff362a84),
    ],
  });

  final String text;
  final void Function() onPressed;
  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: colorList,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        textColor: whiteColor,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 25,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
