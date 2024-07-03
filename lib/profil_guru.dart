import 'package:flutter/material.dart';
import 'package:frontend/model/guru.dart';

class Detailguru extends StatefulWidget {
  final Guru guru;
  const Detailguru({super.key, required this.guru});

  @override
  State<Detailguru> createState() => _DetailguruState();
}

class _DetailguruState extends State<Detailguru> {
  double _slider = 0;
  List<Guru> favorites_guru = [];
  List<int> favorite = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mengajar"),
          backgroundColor: Colors.blue[900],
          foregroundColor: Color.fromARGB(255, 169, 214, 240),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 194, 211, 227),
        body: ListView(children: [
          Column(
            children: [
              Image.network(
                widget.guru.image[_slider.toInt()],
                width: double.infinity,
                height: 380,
                fit: BoxFit.fitWidth,
              ),
              Slider(
                  value: _slider,
                  min: 0,
                  max: widget.guru.image.length.toDouble() - 1,
                  divisions: widget.guru.image.length - 1,
                  onChanged: (value) {
                    setState(() {
                      _slider = value;
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      "important/penting : ${widget.guru.important}",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buka ${widget.guru.opening}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rating ${widget.guru.rating}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.guru.description,
                    textAlign: TextAlign.justify,
                  ),
                ]),
              )
            ],
          ),
        ]));
  }
}
