import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

void main() {
  test('Adds skeleton text animation to a Widget', () {
    final skeletonText = SkeletonAnimation(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: new BorderRadius.circular(30.0),
            color: Colors.grey[300]),
        width: 30.0,
        height: 13.0,
      ),
    );

    skeletonText.createElement();
  });
}
