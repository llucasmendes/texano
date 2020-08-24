import 'package:flutter/material.dart';
import 'package:texano/core/navigator/routes.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/features/run/utils/run_consts.dart';
import 'package:texano/features/run/utils/run_strings.dart';

class BePremiumPage extends StatelessWidget {
  BePremiumPage({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(RunStrings.bePremium),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: Routes.sailor.pop,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Icon(
                  Icons.stars,
                  size: 70,
                  color: AppColors.amber,
                ),
              ),
              Text(
                RunStrings.bePremiumMessage,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: _column(),
              ),
              RaisedButton(
                child: Text(RunStrings.bePremiumButton),
                onPressed: () {},
              ),
              SizedBox(height: 10),
              FlatButton(
                child: Text(RunStrings.maybeLaterButton),
                onPressed: Routes.sailor.pop,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _column() {
    return Column(
      children: [
        Text(
          RunStrings.availableColorsMessage,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: RunConsts.freeColors[0],
              radius: 20,
            ),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: RunConsts.freeColors[1],
              radius: 20,
            ),
          ],
        ),
      ],
    );
  }
}
