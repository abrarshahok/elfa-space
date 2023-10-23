import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bell extends StatelessWidget {
  const Bell({
    required this.child,
    required this.value,
  });

  final Widget child;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 5,
          top: 0,
          child: Container(
              padding: const EdgeInsets.all(2.0),
              // color: Theme.of(context).accentColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: GoogleFonts.alexBrush(
                  color: const Color(0xFFB509D0),
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.30,
                ),
              )),
        )
      ],
    );
  }
}
