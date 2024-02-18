import 'package:flutter/material.dart';
import 'package:spotifyui/widget/album_cards.dart';
import 'package:spotifyui/widget/rowalbum_cards.dart';
import 'package:spotifyui/widget/song_cards.dart';

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
                colors: [
                  Color.fromARGB(97, 16, 141, 93),
                  Colors.black.withOpacity(0)
                ]),
          ),
        ),
        const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recently Played',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 23),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
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
                  SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(18, 16, 0, 0),
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
                        Albumcard(
                          image: AssetImage('assets/image7.jpg'),
                          label: 'pop mix',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Albumcard(
                          image: AssetImage('assets/image8.jpg'),
                          label: 'pop mix',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Evening',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 23),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            RowAlbumCards(
                              images: AssetImage("assets/top50.jpg"),
                              label: "Top 50 - global",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RowAlbumCards(
                              images: AssetImage("assets/image7.jpg"),
                              label: "Top 50 - USA",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            RowAlbumCards(
                              images: AssetImage("assets/image8.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RowAlbumCards(
                              images: AssetImage("assets/image9.jpg"),
                              label: "Carnival",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            RowAlbumCards(
                              images: AssetImage("assets/image10.jpg"),
                              label: "Saregama ",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RowAlbumCards(
                              images: AssetImage("assets/image11.jpg"),
                              label: "bhajans",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            RowAlbumCards(
                              images: AssetImage("assets/image14.jpg"),
                              label: "Butter mix",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RowAlbumCards(
                              images: AssetImage("assets/image12.jpg"),
                              label: "New dance",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          "Based on your recent listening",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 23),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            SongCards(
                              image: AssetImage("assets/image18.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/images19.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image20.jpeg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image21.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image22.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image23.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Recommeded Radio",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 23),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            SongCards(
                              image: AssetImage("assets/image24.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image25.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image26.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image27.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image28.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SongCards(
                              image: AssetImage("assets/image29.jpg"),
                              label: "Eminerm",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    ));
  }
}
