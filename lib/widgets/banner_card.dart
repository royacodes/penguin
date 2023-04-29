import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor_ui_kit/models/banner.dart';

import '../constants.dart';

class BannerCard extends StatelessWidget {
  final BannerModel bannerModel;
  BannerCard({required this.bannerModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(builder: (BuildContext context) {
        //     return LessonScreen();
        //   }),
        // );
      },
      child: Container(
        height: ScreenUtil().setHeight(136.0),
        width: ScreenUtil().setWidth(246.0),
        decoration: BoxDecoration(
          color: bannerModel.color,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: bannerModel.boxShadow,
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                bannerModel.image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}