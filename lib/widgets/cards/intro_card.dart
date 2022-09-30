import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  final String text;

  const IntroCard({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      // alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.15),
                offset: Offset(0, 10),
                blurRadius: 15),
          ],
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(15.0)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade900,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
