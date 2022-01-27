import 'package:flutter/material.dart';
import 'package:juice_app/page3.dart';
import 'package:get/get.dart';

class Juice2 extends StatefulWidget {
  const Juice2({Key? key}) : super(key: key);

  @override
  _Juice2State createState() => _Juice2State();
}

class _Juice2State extends State<Juice2> {
  List flavours = [
    'images/starw.jpeg',
    'images/oranges.jpeg',
    'images/mixed.jpeg',
    'images/berrie.jpg',
    'images/grapes.jpg'
  ];
  List location = [
    'Nainital (U.K)',
  ];
  List names = ['Strawberry', 'Oranges', 'Mixed', 'Blue Berry', 'Grapes'];
  String desc =
      'mixed with chilled ice and grinded with sponzita, picked with soft hands in sunshine morning, 100% pure, hygiene and checked by fssai';
  List amount = [
    '₹30/glass',
    '₹40/glass',
    '₹25/glass',
    '₹20/glass',
    '₹20/glass'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/berries.jpg',
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.sort,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 60),
                  const Text(
                    'Healthy outside',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'start',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 31,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'from inside',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, right: 90),
                    child: Center(
                      child: Text(
                        'We provide a variety of juices with various flavours.',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w400,
                            fontSize: 24),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.only(right: 90),
                    child: Text(
                      'Our some varients',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                      itemCount: flavours.length,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(() => Juice3(details: {
                                  'background': flavours[index],
                                  'location': location[index],
                                  'title': names[index],
                                  'desc': desc,
                                  'amount': amount[index],
                                }));
                          },
                          child: Column(
                            children: [
                              Hero(
                                tag: flavours[index],
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: index == 0 ? 0 : 20),
                                  height: 230,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(flavours[index]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Center(
                                  child: Text(names[index],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                              Center(
                                  child: Text(amount[index],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20))),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
