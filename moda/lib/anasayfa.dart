import 'package:flutter/material.dart';
import 'package:moda/modadetay.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabbarController;
  @override
  void initState() {
    tabbarController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabbarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabbarController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 16,
              ),
            ),
          ],
          indicatorColor: Colors.brown,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          '.....',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani("assets/model1.png", "assets/chanellogo.png"),
                listeElemani("assets/model2.png", "assets/chloelogo.png"),
                listeElemani("assets/model3.png", "assets/louisvuitton.png"),
                listeElemani("assets/model1.png", "assets/chanellogo.png"),
                listeElemani("assets/model2.png", "assets/chloelogo.png"),
                listeElemani("assets/model3.png", "assets/louisvuitton.png"),
                listeElemani("assets/model1.png", "assets/chanellogo.png"),
                listeElemani("assets/model2.png", "assets/chloelogo.png"),
                listeElemani("assets/model3.png", "assets/louisvuitton.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 6,
              //color: Colors.blue.shade100,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.4,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/model1.png"))),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Daisy",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "34 min ago",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "This official website features a ribbed knit zipper jacket that is"
                    "modern and stylish. It looks very temparament and is recommend to friends",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((mycontext) => ModaDetay(
                                    imgpath: 'assets/modelgrid1.png'))));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.png',
                            child: Container(
                              height: 250,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/modelgrid1.png'))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((mycontext) => ModaDetay(
                                          imgpath: 'assets/modelgrid2.png'))));
                                },
                                child: Hero(
                                  tag: 'assets/modelgrid2.png',
                                  child: Container(
                                    height: 120,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/modelgrid2.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((mycontext) => ModaDetay(
                                                imgpath:
                                                    'assets/modelgrid3.png'))));
                                  },
                                  child: Hero(
                                    tag: 'assets/modelgrid3.png',
                                    child: Container(
                                      height: 120,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/modelgrid3.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown.withOpacity(0.2)),
                        child: Center(
                          child: Text(
                            "#LuisVuitton",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.grey.shade600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "#Chloe",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey.shade600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.reply,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      Text(
                        "1.7K",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey.shade600),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      Center(
                        child: Text(
                          "325",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey.shade600),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red.withOpacity(1),
                      ),
                      Center(
                        child: Text(
                          "2.3k",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey.shade600),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget listeElemani(String imagePath, String logoPath) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: [
        Stack(children: [
          Material(
            elevation: 6,
            borderRadius: BorderRadius.circular(38),
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(logoPath),
                ),
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Material(
          color: Colors.brown,
          elevation: 4,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            alignment: Alignment.center,
            width: 75,
            height: 30,
            decoration: const BoxDecoration(),
            child: const Text("Follow",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Color.fromARGB(255, 255, 255, 255))),
          ),
        ),
      ],
    ),
  );
}
