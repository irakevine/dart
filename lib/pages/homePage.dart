// ignore: file_names
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Leave')),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: const [
                Text(
                  'My leave',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          //cards
          Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.red[300]),
            child: Column(children: [
              //           Icon(
              //   Icons.favorite,
              //   color: Colors.pink,
              //   size: 24.0,
              //   semanticLabel: 'Text to announce in accessibility modes',
              // )
              //card info
              Text('Business Leave'),
              //card expiry date
              Text('15days')
            ]),
          )
        ])));
  }
}
