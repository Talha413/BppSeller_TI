import 'package:bpp_seller_ti/sevices/model/home_slider_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.h,
      width: 336.w,
      margin: EdgeInsets.only(left: 12.w,right: 12.w,top: 16.h,bottom: 24.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Colors.red,
      ),
      child: CarouselSlider.builder(
        itemCount: homeSLiderLists.length,
        itemBuilder: (BuildContext context, int i, int realIndex) =>
            Container(
             // clipBehavior: Clip.antiAlias,
              //height: 124.h,
              //width: 336.w,
              child: Image.asset(
          "${homeSLiderLists[i].sliderImg}",height: 124.h,width: 336.w,
          fit: BoxFit.cover,
          //width: double.infinity,
        ),
            ),
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 2,
          aspectRatio: 1.0,
          initialPage: 1,
        ),
      ),
    );
  }
}
