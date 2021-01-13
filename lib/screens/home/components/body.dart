import 'package:combe_app/constant.dart';
import 'package:combe_app/screens/home/components/pelayanan_banner.dart';
import 'package:combe_app/screens/home/components/search.dart';
import 'package:combe_app/screens/login_succes/components/icon_btn_counter.dart';
import 'package:combe_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            PelayananBanner(),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Categories(),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icon/Flash Icon.svg", "text": "Bencana Alam"},
      {"icon": "assets/icon/Flash Icon.svg", "text": "Bencana Alam"},
      {"icon": "assets/icon/Flash Icon.svg", "text": "Bencana Alam"},
      {"icon": "assets/icon/Flash Icon.svg", "text": "Bencana Alam"},
      {"icon": "assets/icon/Discover.svg", "text": "Lainnya"},
    ];
    return SizedBox(
      width: getProportionateScreenWidth(25),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(6)),
          decoration: BoxDecoration(
            color: Color(0xFFFFECDF),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: SvgPicture.asset(categories[0]["icon"]),
        ),
      ),
    );
  }
}
