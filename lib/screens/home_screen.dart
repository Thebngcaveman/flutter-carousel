import 'package:flutter/material.dart';
import 'package:flutter_carousel/components/selected_photo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int photoIndex = 0;

  List<String> photos = [
    'assets/images/castle.png',
    'assets/images/desert.png',
    'assets/images/egypt.png',
    'assets/images/snow.png'
  ];

  void _clickPreviousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : photos.length - 1;
    });
  }

  void _clickNextimage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage(photos[photoIndex]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 400.0,
                  width: 300.0,
                ),
                Positioned(
                  top: 375,
                  left: 25.0,
                  right: 25.0,
                  child: Selectedphoto(
                    numberOfDots: photos.length,
                    photoIndex: photoIndex,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _clickPreviousImage,
                child: Text('Prevoius'),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                onPressed: _clickNextimage,
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
