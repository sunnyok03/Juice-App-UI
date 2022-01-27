import 'package:flutter/material.dart';

class Juice3 extends StatefulWidget {
  Juice3({required this.details});

  final Map details;

  @override
  _Juice3State createState() => _Juice3State();
}

class _Juice3State extends State<Juice3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Hero(
                  tag: widget.details['background'],
                  child: Image.asset(
                    widget.details['background'],
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.75),
                  ))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                Container(
                  height: 300,
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(widget.details['background']),
                ),
                const SizedBox(height: 30),
                Center(
                    child: Text(widget.details['title'] + "Juices",
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
                const SizedBox(height: 30),
                Center(
                    child: Text(widget.details['desc'],
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
                const SizedBox(height: 25),
                Text(widget.details['location'],
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                Text(widget.details['amount'],
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 50),
                InkWell(
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text('Order Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2,
                                ))))),
                const SizedBox(height: 45),
                const Center(
                  child: Text('Delivered between 15-20 mins',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
