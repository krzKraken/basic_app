import 'package:flutter/material.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // Todo: Animation with logo and palette colors
        child: Text('Aqui va el logo y la animacion al abrir la app'),
      ),
    );
  }
}
