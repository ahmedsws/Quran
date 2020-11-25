import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    this.text = '',
    this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .apply(
              color: Colors.white,
            )
            .copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Color(0xFFF9B091),
      onPressed: onPressed,
    );
  }
}
