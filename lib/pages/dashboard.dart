import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}


class _dashboardState extends State<dashboard> {

  horizontallistitem(size, String title, url, date) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => dashboard(),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              height: size.height / 4.5,
              width: size.width / 1.4,
              margin: EdgeInsets.all(15),

              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(fit: BoxFit.cover, url),
              ),
            ),
            Container(
              height: size.height / 4.5,
              width: size.width / 1.4,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Positioned(
              bottom: 45,
              left: 30,
              child: Container(
                width: size.width / 2,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 30,
              child: Text(date, style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: Icon(Icons.favorite, color: Colors.white, size: 30),
            ),
          ],)
    );
  }
  verticallistitem(size, String title, url, date, source) {
    return Row(
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(
                fit: BoxFit.cover,
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDfJiTpOsqEpvMWlo013N0jPKcoBo7czSMjSFsjLz9hA&s",
              ),
            ),
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.all(15),
              child: Center(
                child: Icon(
                  Icons.play_circle_fill_rounded,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width / 2,
                child: Text(
                  "money follows my brother money follows my brother money follows my brother",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "PCPS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "PCPS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                horizontallistitem(
                  size,
                  "Maa Elephant huu Rayyy, i'm  elephant",
                  "https://static.vecteezy.com/system/resources/thumbnails/083/933/835/small/beautiful-and-inspiring-picture-detailing-a-bright-hot-air-balloon-over-river-pure-cozy-perfect-for-creatives-moods-stock-image-free-photo.jpeg",
                  "01/12/2026",
                ),
                horizontallistitem(
                  size,
                  "Maa Elephant huu Rayyy, i'm  elephant",
                  "https://static.vecteezy.com/system/resources/thumbnails/083/933/835/small/beautiful-and-inspiring-picture-detailing-a-bright-hot-air-balloon-over-river-pure-cozy-perfect-for-creatives-moods-stock-image-free-photo.jpeg",
                  "01/12/2026",
                ),

                // horizontal card
              ],
            ),
          ),
          Container(
            height: size.height / 1.6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Stack(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network(
                              fit: BoxFit.cover,
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDfJiTpOsqEpvMWlo013N0jPKcoBo7czSMjSFsjLz9hA&s",
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            margin: EdgeInsets.all(15),
                            child: Center(
                              child: Icon(
                                Icons.play_circle_fill_rounded,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width / 2,
                              child: Text(
                                "money follows my brother money follows my brother money follows my brother",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "PCPS",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "PCPS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
