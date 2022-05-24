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
          Image.asset(images!,fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
