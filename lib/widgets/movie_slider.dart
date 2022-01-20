import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  final String topic;
  const MovieSlider({
    Key? key,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.54 - kToolbarHeight - 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(topic,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold))),
          const _MoviePoster(),
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
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 175,
            height: 100,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'details',
                      arguments: 'movie-instance'),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      placeholder: const AssetImage('assets/no-image.jpg'),
                      image: const NetworkImage(
                          'https://via.placeholder.com/300x400'),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4 -
                          kToolbarHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 15),
                const Text(
                  'Star War: El retorno de jedy asdad adsasd asdasd asdas ASDAD',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
