part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = '/';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mission 1"),
        backgroundColor: Colors.redAccent,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Book Now", style: TextStyle(color: Colors.black87)),
        onPressed: () {
          Navigator.pushNamed(context, bookingPage.routeName);
        },
        backgroundColor: Colors.transparent,
        shape: StadiumBorder( side: BorderSide(color: Colors.black87, width: 2)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.white]),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(children: [
                  const Image(
                    width: double.infinity,
                    height: double.infinity,
                    image: AssetImage(
                        "assets/images/Skyscrapers_of_Shinjuku_2009_January.jpg"),
                    fit: BoxFit.fill,
                  ),
                  Align(
                    alignment: const Alignment(0.9, -0.75),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          if (buttonPressed) {
                            buttonPressed = false;
                          } else {
                            buttonPressed = true;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.thumb_up_alt,
                        color: !buttonPressed ? Colors.grey : Colors.blue,
                      ),
                      label: const Text(""),
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          padding: const EdgeInsets.only(left: 5),
                          shadowColor: Colors.black54,
                          backgroundColor: Colors.white,
                          minimumSize: const Size.fromRadius(24),
                          shape: const CircleBorder()),
                    ),
                  )
                ]),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(top: 3, bottom: 3),
                padding: const EdgeInsets.all(2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            image:
                                AssetImage("assets/images/Asakusa_Temple.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            image: AssetImage("assets/images/Shibuya.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            image: AssetImage(
                                "assets/images/Tokyo_Station_Marunouchi_Building.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            image: AssetImage("assets/images/Tokyo_Tower.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: ListView(
                padding: const EdgeInsets.all(5),
                children: [
                  Text(
                    "Welcome to Tokyo!",
                    style: TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 18, height: 1.2),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Tokyo (/ˈtoʊkioʊ/; Japanese: 東京, Tōkyō), officially the Tokyo Metropolis (東京都, Tōkyō-to), is the capital and largest city of Japan. Formerly known as Edo, its metropolitan area (spanning 13,452 square kilometres or 5,194 square miles) is the most populous in the world, with an estimated 37.468 million residents as of 2018 the city proper has a population of 13.99 million people. Located at the head of Tokyo Bay, the prefecture forms part of the Kantō region on the central coast of Honshu, Japan's largest island. Tokyo serves as Japan's economic centre and is the seat of both the Japanese government and the Emperor of Japan.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Tokyo is the largest urban economy worldwide by gross domestic product, and is categorized as an Alpha+ city by the Globalization and World Cities Research Network. It is also Japan's leading centre of business and finance as part of an industrial region that includes the cities of Yokohama, Kawasaki, and Chiba. As of 2021, Tokyo is home to 37 companies of the Fortune Global 500. In 2020, the city ranked fourth on the Global Financial Centres Index, behind only New York City, London, and Shanghai. Tokyo is home to the world's tallest tower, the Tokyo Skytree, and the world's largest underground floodwater diversion facility, the Metropolitan Area Outer Underground Discharge Channel (located in Kasukabe, Saitama, a suburb of Tokyo). The Tokyo Metro Ginza Line, opened in 1927, is the oldest underground metro line in East Asia.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
