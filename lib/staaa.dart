import "package:flutter/material.dart";

class PlayContainer extends StatelessWidget {
  final String imageUrl, songName, singerName, year;

  const PlayContainer(
      {Key? key,
      required this.imageUrl,
      required this.songName,
      required this.singerName,
      required this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Hell");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        width: MediaQuery.of(context).size.width / 1.28,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  imageUrl,
                  width: 70,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songName,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [Text("$singerName - "), Text(year)],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Icon(Icons.more_vert)
          ],
        ),
      ),
    );
  }
}

class Staaa extends StatelessWidget {
  const Staaa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image_url =
        "https://i0.wp.com/99lyricstore.com/wp-content/uploads/2022/11/Apna-Bana-Le-Lyrics-Arijit-Singh.jpg";

    return Scaffold(
      body: Center(
        child: Container(
          height: 800,
          width: 400,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.red, width: 10)),
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    // height: 200,
                    child: Image.network(
                      image_url,
                      height: 150,
                    ),
                  ),
                  // Center(
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "10 Pops Music",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("YouTube Music", style: TextStyle(fontSize: 15)),
                        Text("92 songs", style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ),
                  // )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Relive some of the biggest pop song of the 2010s",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Row(
                children: [
                  // Image.network(image_url, width: 70),
                  Column(
                    children: [
                      PlayContainer(
                        imageUrl: image_url,
                        songName: "Apna Bana Le",
                        singerName: "Arijit Singh",
                        year: "2022",
                      ),
                      PlayContainer(
                        imageUrl: image_url,
                        songName: "Apna Bana Le",
                        singerName: "Arijit Singh",
                        year: "2022",
                      ),
                      PlayContainer(
                        imageUrl: image_url,
                        songName: "Apna Bana Le",
                        singerName: "Arijit Singh",
                        year: "2022",
                      ),
                      PlayContainer(
                        imageUrl: image_url,
                        songName: "Apna Bana Le",
                        singerName: "Arijit Singh",
                        year: "2022",
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  minimumSize: const Size(60, 60)),
                              child: const Icon(Icons.play_arrow_rounded),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  minimumSize: const Size(60, 60)),
                              child: const Icon(Icons.delete),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
