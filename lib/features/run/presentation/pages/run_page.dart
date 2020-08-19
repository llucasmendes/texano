import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';

class RunPageArgs extends BaseArguments {
  RunPageArgs(this.lauda);

  final Lauda lauda;
}

class RunPage extends StatelessWidget {
  RunPage(this.args);

  final RunPageArgs args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
