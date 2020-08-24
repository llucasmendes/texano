import 'package:flutter/material.dart';
import 'package:texano/features/run/presentation/widgets/run_page/triangulo_widget.dart';

class SetasCentralizadasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: TrianguloWidget(),
          ),
          RotatedBox(
            quarterTurns: 3,
            child: TrianguloWidget(),
          ),
        ],
      ),
    );
  }
}
