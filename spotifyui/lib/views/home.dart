import 'package:flutter/material.dart';
import 'package:spotifyui/widget/album_cards.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white38, Colors.black.withOpacity(0)]),
          ),
        ),
        SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recently Played',
                            style: Theme.of(context).textTheme.headlineLarge),
                        const SizedBox(
                          width: 20,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(Icons.settings),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SingleChildScrollView(
                    padding: EdgeInsets.all(16.0),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Albumcard(
                          image: AssetImage('assets/image1.jpg'),
                          label: 'Chill Mix',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Albumcard(
                          image: AssetImage('assets/image2.jpg'),
                          label: 'daily mix 1',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Albumcard(
                          image: AssetImage('assets/image4.jpg'),
                          label: 'dance mix',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Albumcard(
                          image: AssetImage('assets/image5.jpg'),
                          label: 'relax mix',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Albumcard(
                          image: AssetImage('assets/image6.jpeg'),
                          label: 'pop mix',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    ));
  }
}


