import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("/assets/images/logo.svg"),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Entrar",
          ),
        )
      ],
    );
  }
}
