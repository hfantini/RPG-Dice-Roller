import 'package:flutter/material.dart';

class RollerButton extends OutlinedButton
{
    RollerButton({Key? key, required onPressed, required String text})
    : 
    super(key: key, onPressed: onPressed,
    style: OutlinedButton.styleFrom
    (
        side: const BorderSide(width: 1, color: Colors.white)
    ),
    child: Text
    (
        text,
        style: const TextStyle
        (
            fontSize: 24,
            color: Colors.white,
            height: 3,
        ),
    ));
}