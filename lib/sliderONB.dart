import 'package:flutter/material.dart';
import 'Theme.dart';

class slideronb extends StatelessWidget {
  String? tittle;
  String? description;
  String? images;

  slideronb({this.tittle, this.description, this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            images!,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          Center(
            child: Text(
              tittle!,
              style: Regular.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
