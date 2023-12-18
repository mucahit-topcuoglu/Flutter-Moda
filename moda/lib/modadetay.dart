import 'package:flutter/material.dart';
import 'package:moda/main.dart';

// ignore: must_be_immutable
class ModaDetay extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imgpath;
  ModaDetay({required this.imgpath, super.key});

  @override
  State<ModaDetay> createState() => _ModaDetayState();
}

class _ModaDetayState extends State<ModaDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        InkWell(
          onDoubleTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MyApp()))
          },
          child: Hero(
            tag: widget.imgpath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgpath), fit: BoxFit.cover)),
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 30,
          right: 15,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: Container(
              height: 215,
              width: MediaQuery.of(context).size.width - 30,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/dress.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LAMINATED",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Louis Vuitton",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        Text(
                          "One button v-neck sling long sleeved\nwaist female stitching dress",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '\$6500',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: CircleAvatar(
                            backgroundColor: Colors.brown,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey.shade400,
                                ))),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
