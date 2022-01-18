import 'package:flutter/material.dart';
import 'package:basic_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                ))
          ],
          title: const Text('Peliculas en Cine'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              //Widget cardSwiper
              CardSwiper(),
              // TODO: slider peliculas
              MovieSlider(),
            ],
          ),
        ));
  }
}
