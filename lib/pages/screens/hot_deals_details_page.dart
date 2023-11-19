import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../sevices/model/hot_deals_model.dart';

class HotDealsDetails extends StatelessWidget {
  // const HotDealsDetails({super.key});
  String? hotDealsImgFromHome;
  String? hotDealsNameFromHome;

  // final ProductModel productModel;

  // HotDealsDetails({
  //   required this.productModel
  //   // required this.hotDealsNameFromHome,
  //   // required this.hotDealsImgFromHome,
  // });
  HotDealsDetails({
    required this.hotDealsNameFromHome,
    required this.hotDealsImgFromHome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "${hotDealsImgFromHome}",
              height: 154.h,
              width: 154.w,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text("${hotDealsNameFromHome}"),
            // Text("productModel.productName"),
            // Image.asset("$hotDealsImgFromHome",height: 200,width: 200,),
          ],
        ),
      ),
    );
  }
}
