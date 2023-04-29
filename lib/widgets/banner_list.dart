import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multivendor_ui_kit/widgets/banner_card.dart';

import '../constants.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(150.0),
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: Constants.banners.length,
        itemBuilder: (BuildContext context, int index) {
          return BannerCard(
            bannerModel: Constants.banners[index],
          );
        },
      ),
    );
  }
}