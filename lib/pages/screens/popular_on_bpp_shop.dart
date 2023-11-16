import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../sevices/model/popular_on_bpp_shop_model.dart';

class PopularOnBPPShop extends StatelessWidget {
  const PopularOnBPPShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.h,
      width: 332.w,
      margin: EdgeInsets.only(left: 14.w,right: 14.w) ,
      //color:Colors.orange,
       color:Colors.transparent,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color:Colors.orange,
      // ),
      child: GridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: popularProductList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 4.0.w, // spacing between rows
        crossAxisSpacing: 4.0.h,
        childAspectRatio: 66/52.w,
        //childAspectRatio: 0.787878,
      ),
      itemBuilder: (context, i) {
        return Container(
          //height: 66.h ,
         // width: 52.h,
          //padding: EdgeInsets.fromLTRB(11.w, 4.h, 11.w, popularProductList[i].productName!.length>5? 6.h:1.h,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),

          child: Column(
            children: [
              Container(
                height: 30.h,
                width: 30.w,
                child: Image.asset(
                  "${popularProductList[i].productImg}",
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              // SizedBox(
              //   height: popularProductList[i].productName!.length < 5
              //       ? 10.h
              //       : 1.h,
              // ),
              //Text("${popularProductList[i].productId}"),
              Text("${popularProductList[i].productName}",overflow: TextOverflow.fade,style: TextStyle(fontSize: 10.sp),),
            ],
          ),
        );
      },
      // gridDelegate: SLiv
    ),

    );
  }
}

//Previous Design??
//
// Container(
// height: 136.h,
// width: 332.w,
// //width: double.infinity,
// color:Colors.orange,
// // decoration: BoxDecoration(
// //   borderRadius: BorderRadius.circular(10),
// //   color:Colors.orange,
// // ),
// child: Column(
// children: [
// // Align(
// //     alignment: Alignment.centerLeft,
// //     child: Text(
// //       "Popular on BPP Shop",
// //       style: TextStyle(fontSize: 14.sp),
// //     )),
// SizedBox(
// height: 8.h,
// ),
// Expanded(
// child: Padding(
// padding:  EdgeInsets.only(left: 2.w),
// child: GridView.builder(
// shrinkWrap: true,
// scrollDirection: Axis.horizontal,
// itemCount: popularProductList.length,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2, // number of items in each row
// mainAxisSpacing: 4.0.w, // spacing between rows
// crossAxisSpacing: 4.0.h,
// childAspectRatio: 66/52.w,
// //childAspectRatio: 0.787878,
// ),
// itemBuilder: (context, i) {
// return GestureDetector(
// onTap: (){
//
// },
// child: Container(
// //padding: EdgeInsets.fromLTRB(11.w, 4.h, 11.w, popularProductList[i].productName!.length>5? 6.h:1.h,),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// color: Colors.white,
// ),
//
// child: Column(
// children: [
// Container(
// height: 30.h,
// width: 30.w,
// child: Image.asset(
// "${popularProductList[i].productImg}",
// fit: BoxFit.fill,
// width: double.infinity,
// ),
// ),
// // SizedBox(
// //   height: popularProductList[i].productName!.length < 5
// //       ? 10.h
// //       : 1.h,
// // ),
// //Text("${popularProductList[i].productId}"),
// Text("${popularProductList[i].productName}",overflow: TextOverflow.fade,style: TextStyle(fontSize: 10.sp),),
// ],
// ),
// ),
// );
// },
// // gridDelegate: SLiv
// ),
// ),
// )
// ],
// ),
// );
