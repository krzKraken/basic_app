import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Cabiar luego por una instancia de Movie
    // * Se esta leyendo el valor del argumento a travez de esta linea de comandos
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'No movive';
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(movieName: movie),
        SliverList(
          delegate: SliverChildListDelegate([
            const _PosterAndTitle(),
            const _Overview(),
          ]),
        )
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  final String movieName;
  const _CustomAppBar({Key? key, required this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: size.height * 0.33,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Text(movieName),
        ),
        background: const FadeInImage(
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://via.placeholder.com/200x300')),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 150,
              child: FadeInImage(
                height: size.height * 0.2,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/no-image.jpg'),
                image:
                    const NetworkImage('https://via.placeholder.com/200x300'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie.title',
                  style: textTheme.headline5,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
              Text('movie.originalTitle',
                  style: textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1),
              Row(
                children: [
                  const SizedBox(width: 5),
                  const Icon(Icons.star_outline, size: 20, color: Colors.grey),
                  Text(
                    'movie.voteAverae',
                    style: textTheme.caption,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: const Text(
          'Officia magna eiusmod deserunt sunt et Lorem incididunt occaecat. Pariatur minim ullamco culpa nulla ullamco. Consequat tempor dolore aliquip Lorem velit aliquip laboris sint culpa. Cupidatat ex elit sit adipisicing. Exercitation et et in sint deserunt adipisicing amet id laboris laboris aliquip nulla laboris sit.'),
    );
  }
}
