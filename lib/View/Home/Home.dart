import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/Roller/Roller.dart';

class Home extends StatelessWidget
{
  	const Home({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) 
	{
		return Container
		(
      width: double.infinity,
			decoration: const BoxDecoration
			(
				image: DecorationImage
				(
					image: AssetImage("assets/image/background.jpg"),
					fit: BoxFit.cover,
					opacity: 0.8
				)
			),
			child: Column
			(
				mainAxisAlignment: MainAxisAlignment.center,
				children: 
				const 
				[
					Roller()
				],
			),
		);
	}
}