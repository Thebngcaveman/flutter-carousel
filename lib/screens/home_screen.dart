import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int photoIndex = 0;

  List<String> photos =[
    'assets/images/castle.png',
    'assets/images/desert.png',
    'assets/images/egypt.png',
    'assets/images/snow.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }
}
