import 'package:flutter/material.dart';
import 'package:zoom_clone/utility/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: ElevatedButton(
        onPressed: (){},
        child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          minimumSize: Size(
            double.infinity,
            50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: buttonColor)
          )

        ),
      ),
    );
  }
}
