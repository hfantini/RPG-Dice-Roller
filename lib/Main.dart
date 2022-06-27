import 'package:flutter/material.dart';
import 'package:rpg_dice_roller/View/Home/Home.dart';

void main()
{
	runApp
	( 
		const MaterialApp
		(
			home: Scaffold
            (
                appBar: null,
                body: Home(),
            ),
		) 
	);
}