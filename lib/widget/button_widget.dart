import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: Colors.lightGreenAccent,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      onPressed: onClicked,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
