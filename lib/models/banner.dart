import 'package:flutter/material.dart';

class BannerModel {
  final String topic;
  final String points;
  final String time;
  final String image;
  final Color color;
  final List<BoxShadow> boxShadow;
  BannerModel({
    required this.time,
    required this.topic,
    required this.points,
    required this.image,
    required this.color,
    required this.boxShadow,
  });
}