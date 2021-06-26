import 'package:flutter/material.dart';

class Selectedphoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  const Selectedphoto({required this.numberOfDots, required this.photoIndex});

  Widget _inactiveIndicator() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }

  Widget _activeIndicator() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 2.0),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildIndicators() {
    List<Widget> indicators = [];

    for (int i = 0; i < numberOfDots; i++) {
      indicators.add(i == photoIndex ? _activeIndicator() : _inactiveIndicator());
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildIndicators(),
      ),
    );
  }
}
