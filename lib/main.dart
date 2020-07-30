import 'package:flutter/material.dart';
import 'package:texano/core/theme/app_theme.dart';

void main() {
  runApp(TexanoApp());
}

class TexanoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teleprompter Texano',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.texanoTheme,
      home: TemporaryHome(),
    );
  }
}

class TemporaryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teleprompter Texano'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Bem-vindo ao Teleprompter Texano'),
      ),
    );
  }
}
