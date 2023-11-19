import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

    child: Container(
    width: 258.w,
    height: 927.h,
    color: Color(0xffffffff),
    child: ListView(
    padding: EdgeInsets.symmetric(vertical: 8.h),
    children: [
    Padding(
    padding: EdgeInsets.only(left: 33.w,right: 33.w,bottom: 8.h),
    child: Image.asset("assets/icon/Bpplogo/bpplogo.png",width: 192.w,height: 52.h,fit: BoxFit.fill,)
    ),
    Container(
    height: 38.h,
    width: 258.w,
    color: Color(0xfffFF4e6),
    padding: EdgeInsets.only(left: 16.w,top: 8.h,bottom: 0.h),
    child: Text("Category",style: TextStyle(color: Color(0xffFF8800),fontWeight: FontWeight.w600,fontSize:18.sp),),
    ),
    ExpansionTile(
    title: Text("Grocery (Only Dhaka city)",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/popularitem/Vegetables.png",width: 25.w,),
    children: [
    Padding(
    padding: EdgeInsets.only(top: 0.h,left: 55.w,bottom: 5.h),
    child: ExpansionTile(
    title: Text("All Grocery",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),
    children: [
    ExpansionTile(
    title: Text("Meat & Fish",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Meat & Fish",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Bread & Bakery",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Beverages",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Dairy & Eggs",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Fruits & Vegetables",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Candy & Chocolate",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Oil & Spices",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ExpansionTile(
    title: Text("Home & Cleaning",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),),
    ),

    ),
    ],
    ),
    ),
    ],

    ),
    ExpansionTile(
    title: Text("Islamic",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/islamic.png",width: 25.w,),
    children: [
    // Padding(
    //   padding: EdgeInsets.only(top: 0.h,left: 55.w,bottom: 5.h),
    //   child: ExpansionTile(
    //     title: Text("All Grocery",style: TextStyle(
    //     fontSize: 14.sp,
    //     fontWeight: FontWeight.w400,
    //     color: Color(0xff546678),),
    //   ),
    //     children: [
    //       ExpansionTile(
    //         title: Text("Meat & Fish",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Meat & Fish",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Bread & Bakery",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Beverages",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Dairy & Eggs",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Fruits & Vegetables",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Candy & Chocolate",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Oil & Spices",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //       ExpansionTile(
    //         title: Text("Home & Cleaning",style: TextStyle(
    //           fontSize: 14.sp,
    //           fontWeight: FontWeight.w400,
    //           color: Color(0xff546678),),
    //         ),
    //
    //       ),
    //     ],
    //   ),
    // ),
    ],

    ),
    ExpansionTile(
    title: Text("Fashion",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/fashion.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Baby Care",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/baby care.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Cosmetics",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/cosmetics.png",width: 25.w,),
    children: [
    ],

    ),
    ///cosmetics obdi\\\\
    ExpansionTile(
    title: Text("Personal Care",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/personal care.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Pharmacy",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/pharmacy.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Electronics",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/electronics.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Eye Care",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/eye care.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Shoe",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/shoe.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Furniture",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/furniture.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Stationery & Office",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/stationary and office.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Home Appliance & Decorate",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/home appliance and decorate.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Hardware, Cables & Sanitary",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/hardware cables sanitary.png",width: 25.w,),
    children: [
    ],

    ),
    ExpansionTile(
    title: Text("Vehicle",style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff546678),
    ),
    ),
    leading: Image.asset("assets/icon/category/vehicles.png",width: 25.w,),
    children: [
    ],

    ),
    ],

    ),
    ),
    );
  }
}