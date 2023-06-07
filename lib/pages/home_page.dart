import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.3),
                  ],
                  begin: Alignment.bottomRight,
                )),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const Text(
                    "Best Hotels Ever",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search for hotels',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            // #body
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Business Hotels',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image: 'assets/images/ic_hotel1.jpg',
                              title: 'Hotel 1'),
                          makeItem(
                              image: 'assets/images/ic_hotel2.jpg',
                              title: 'Hotel 2'),
                          makeItem(
                              image: 'assets/images/ic_hotel3.jpg',
                              title: 'Hotel 3'),
                          makeItem(
                              image: 'assets/images/ic_hotel4.jpg',
                              title: 'Hotel 4'),
                          makeItem(
                              image: 'assets/images/ic_hotel5.jpg',
                              title: 'Hotel 5'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Airport Hotels',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image: 'assets/images/ic_hotel3.jpg',
                              title: 'Hotel 1'),
                          makeItem(
                              image: 'assets/images/ic_hotel2.jpg',
                              title: 'Hotel 2'),
                          makeItem(
                              image: 'assets/images/ic_hotel1.jpg',
                              title: 'Hotel 3'),
                          makeItem(
                              image: 'assets/images/ic_hotel4.jpg',
                              title: 'Hotel 4'),
                          makeItem(
                              image: 'assets/images/ic_hotel5.jpg',
                              title: 'Hotel 5'),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Resort Hotels',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image: 'assets/images/ic_hotel5.jpg',
                              title: 'Hotel 1'),
                          makeItem(
                              image: 'assets/images/ic_hotel4.jpg',
                              title: 'Hotel 2'),
                          makeItem(
                              image: 'assets/images/ic_hotel3.jpg',
                              title: 'Hotel 3'),
                          makeItem(
                              image: 'assets/images/ic_hotel2.jpg',
                              title: 'Hotel 4'),
                          makeItem(
                              image: 'assets/images/ic_hotel1.jpg',
                              title: 'Hotel 5'),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ]),
        ),
      ),
    );
  }
}
