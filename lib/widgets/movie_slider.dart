import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5 - kToolbarHeight,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Populares',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          _MoviePoster(),
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            width: 200,
            height: 200,
            color: Colors.green,
          );
        },
      ),
    );
  }
}
