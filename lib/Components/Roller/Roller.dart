import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rpg_dice_roller/Components/Roller/RollerButton.dart';

class Roller extends StatefulWidget
{
 	const Roller({Key? key}) : super(key: key);

	@override
	State<StatefulWidget> createState() 
	{
		return RollerState();
	}
}

class RollerState extends State<Roller>
{
    String _diceValue = "??";
    String _diceName = "??????";

    void onButtonPress(int dice)
    {
        Random random = Random();
        int value = random.nextInt(dice) + 1;

        setState(() 
        {
            _diceValue = value.toString();
            _diceName = "D$dice";
        });
    }

	@override
	Widget build(BuildContext context)
	{
		return Column
        (
            children: 
            [
                const Text
                (
                    "DICE ROLLER!",
                    style: TextStyle
                    (
                        fontSize: 38,
                        color: Colors.white,
                    ),
                ),
                Padding
                (
                    padding: const EdgeInsets.only(top: 30),
                    child: Text
                    (
                        _diceValue,
                        style: const TextStyle
                        (
                            fontSize: 72,
                            color: Colors.white
                        )
                    ),
                ),
                Padding
                (
                    padding: const EdgeInsets.only(bottom: 45),
                    child: Text
                    (
                        _diceName,
                        style: const TextStyle
                        (
                            fontSize: 16,
                            color: Colors.white
                        )
                    ),
                ),
                Row
                (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                        RollerButton
                        (
                            onPressed: () => onButtonPress(4),
                            text: "D4"
                        ),
                        const SizedBox(width: 15),
                        RollerButton
                        (
                            onPressed: () => onButtonPress(6),
                            text: "D6"
                        ),
                        const SizedBox(width: 15),
                        RollerButton
                        (
                            onPressed: () => onButtonPress(8),
                            text: "D8"
                        ),
                        const SizedBox(width: 15),
                        RollerButton
                        (
                            onPressed: () => onButtonPress(10),
                            text: "D10"
                        )
                    ]
                ),
                const SizedBox(height: 30),
                Row
                (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                        RollerButton
                        (
                            onPressed: () => onButtonPress(12),
                            text: "D12"
                        ),
                        const SizedBox(width: 15),
                        RollerButton
                        (
                            onPressed: () => onButtonPress(20),
                            text: "D20"
                        ),
                        const SizedBox(width: 15),
                        RollerButton
                        (
                            onPressed: () => onButtonPress(100),
                            text: "D100"
                        )
                    ]
                )
            ]
        );
	}
}