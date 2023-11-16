import 'dart:developer';

import 'package:bpp_seller_ti/pages/screens/custom_appBar.dart';
import 'package:bpp_seller_ti/pages/screens/hot_deals.dart';
import 'package:bpp_seller_ti/pages/screens/popular_on_bpp_shop.dart';
import 'package:bpp_seller_ti/pages/screens/slider_page.dart';
import 'package:bpp_seller_ti/pages/screens/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Demo/tab_demo.dart';
import '../sevices/model/hot_deals_model.dart';
import 'bottomNavBar/bottom_navbar_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //log("${MediaQuery.of(context).size.width}");
    // log("${MediaQuery.of(context).size.height}");
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xfff4f4f4),
      // appBar: AppBar(
      //   toolbarHeight: 62.h,
      //   backgroundColor: Colors.orange, // Set this height
      //   leading: Container(
      //     width: 24.w,
      //     height: 24.h,
      //     color: Colors.blue,
      //   ),
      //   title: Container(
      //     margin: EdgeInsets.fromLTRB(24.w, 20.h, 6.w, 8.h),
      //     padding: EdgeInsets.all(1),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(5),
      //     ),
      //     height: 34.h,
      //     width: 184.w,
      //   ),
      //   actions: [
      //     // Image.asset('icons/Mask_group.jpg'),
      //     // Image.asset('icons/user.jpg',height: 24.h,width: 24.w,),
      //     Icon(Icons.abc),
      //     Icon(Icons.abc),
      //   ],
      // ),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 62.h,
        backgroundColor: Color(0xFFFFFFFF),
        actions: [
          CustomAppbar(scaffoldKey: _scaffoldKey),
        ],
      ),
     // drawer: Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // padding: EdgeInsets.symmetric(horizontal: 12.w),
        //color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SliderPage(),
              Padding(
                padding: EdgeInsets.only(left: 12.w, right: 207.w,bottom: 8.h),
                child: Text(
                  "Popular on BPP Shop",
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              //Text("Popular on BPP Shop"),
              PopularOnBPPShop(),
              SizedBox(
                height: 16.h,
              ),
              HotDealsPage(),
              Container(
                width: 360.w,
                height: 80.h,
                margin: EdgeInsets.only(
                    left: 12.w, top: 24.h, right: 12.w, bottom: 24.h),
                color: Colors.teal,
                child: Row(
                  children: [
                    Container(
                      width: 220.w,
                      height: 80.h,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/image67(1).jpg')),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Container(
                      width: 104.w,
                      height: 80.h,
                      child: Image.asset('images/Group1000005515.jpg'),
                    ),
                  ],
                ),
              ),

              TabBarPage(),

              SizedBox(height: 45.h,),
              TabBarDemo(),

              Container(
                width: 336.w,
                height: 116.h,
                margin: EdgeInsets.only(
                    left: 12.w, top: 24.h, right: 12.w, bottom: 24.h),
                child: Image.asset('images/image49.jpg'),
              ),
              Text("Best Deals......"),
              Container(
                height: 10.h,
                width: 336.w,
                color: Colors.red,
              ),
              HotDealsPage(),
              Container(
                width: 336.w,
                height: 116.h,
                margin: EdgeInsets.only(
                    left: 12.w, top: 24.h, right: 12.w, bottom: 24.h),
                child: Image.asset('images/image49.jpg'),
              ),
              Text("All Yours......"),
              Container(
                height: 10.h,
                width: 336.w,
                color: Colors.red,
              ),
              HotDealsPage(),
              // Container(
              //   child: GridView.builder(
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     itemCount: productModelList.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 1,
              //       mainAxisExtent: 162, // number of items in each row
              //       mainAxisSpacing: 12.0.w, // spacing between rows
              //       // crossAxisSpacing: 4.0.h,
              //     ),
              //     itemBuilder: (context, i) {
              //       //*** Grids Design ****
              //       return Container(
              //         width: 162.w,
              //         height: 322.h,
              //         // padding: EdgeInsets.all(1),
              //         decoration: BoxDecoration(
              //           border: Border.all(
              //             // width: 1.13.w,
              //             color: Colors.red,
              //           ),
              //           borderRadius: BorderRadius.circular(10),
              //           //color: Colors.green,
              //         ),
              //         child: Column(
              //           children: [
              //             //Product Image
              //             Container(
              //               width: 154.w,
              //               height: 154.h,
              //               margin: EdgeInsets.only(bottom: 12.h),
              //               padding:
              //               EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 color: Colors.white,
              //               ),
              //               child: Image.asset(
              //                 "${productModelList[i].productImg}",height: 154.h,width: 154.w,
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //             Container(
              //               width: 154.w,
              //               height: 15.h,
              //               padding: EdgeInsets.only(left: 1.w, right: 7.w),
              //               color: Colors.redAccent,
              //               child: Text(
              //                 "${productModelList[i].productName}",
              //                 style: TextStyle(
              //                     fontSize: 12.sp, fontWeight: FontWeight.w400),
              //                 maxLines: 1,
              //                 overflow: TextOverflow.ellipsis,
              //               ),
              //             ),
              //             Container(
              //               width: 44.w,
              //               height: 17.h,
              //               color: Colors.redAccent,
              //               margin: EdgeInsets.only(top: 12.h, bottom: 12.h),
              //               child: Text(
              //                 "${productModelList[i].productUnit} : ${productModelList[i].productUnitType}",
              //                 style: TextStyle(
              //                     fontSize: 14.sp, fontWeight: FontWeight.w600),
              //               ),
              //             ),
              //             Container(
              //               width: 67.w,
              //               height: 17.h,
              //               color: Colors.blue,
              //               margin:EdgeInsets.only(
              //                   left: 10.w, right: 10.w, bottom: 10.h),
              //               child: Row(
              //                 children: [
              //                   Text("${productModelList[i].discountedPrice}",
              //                       style: TextStyle(
              //                           fontSize: 14.sp,
              //                           fontWeight: FontWeight.w700)),
              //                   SizedBox(
              //                     width: 8.w,
              //                   ),
              //                   Text("${productModelList[i].productPrice}",
              //                       style: TextStyle(
              //                           fontSize: 12.sp,
              //                           fontWeight: FontWeight.w400)),
              //                 ],
              //               ),
              //             ),
              //             Container(
              //               width: 90.w,
              //               height: 15.h,
              //               //color: Colors.black12,
              //               margin:
              //               EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8),
              //               child: RatingBar.builder(
              //                   initialRating: 5,
              //                   // initialRating: productModelList[i].productRating as double,
              //                   minRating: 1,
              //                   direction: Axis.horizontal,
              //                   allowHalfRating: true,
              //                   itemCount: 5,
              //                   itemSize: 15.w,
              //                   itemPadding: EdgeInsets.symmetric(horizontal: .1),
              //                   itemBuilder: (context,_)=>Icon(Icons.star,color:Color(0xffFDC040) ,),
              //
              //                   onRatingUpdate: (rating){}
              //               ),
              //             ),
              //             Container(
              //               width: 162.w,
              //               height: 48.h,
              //               padding: EdgeInsets.only(
              //                   left: 13.w, right: 13.w, top: 8.h,bottom: 8),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.only(
              //                     bottomLeft: Radius.circular(10),
              //                     bottomRight: Radius.circular(10)),
              //                 color: Colors.grey,
              //               ),
              //               // child: ElevatedButton(
              //               //   style: ElevatedButton.styleFrom(
              //               //     primary: Colors.orange,
              //               //     fixedSize:
              //               //   ),
              //               //   onPressed: (){}, child: null,
              //               // ) ,
              //               child: GestureDetector(
              //                 onTap: () {},
              //                 child: Container(
              //                   width: 136.w,
              //                   height: 32.h,
              //                   //margin: ,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(5),
              //                     color: Colors.orange,
              //                   ),
              //                   child: Row(
              //                     children: [
              //                       Icon(Icons.add_shopping_cart),
              //                       Text("Add To Cart")
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //     // gridDelegate: SLiv
              //   ),
              // ),
              RatingBarIndicator(
                rating: 2.50,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 50.0,
                direction: Axis.horizontal,
              ),
              RatingBar(
              initialRating: 3,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              ratingWidget: RatingWidget(
                full: Icon(Icons.star),
                half: Icon(Icons.star),
                empty: Icon(Icons.star),
                // full: _image('assets/heart.png'),
                // half: _image('assets/heart_half.png'),
                // empty: _image('assets/heart_border.png'),
              ),
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
              // Padding(
              //   padding: EdgeInsets.only(top: 1.h,left: 30.w),
              //   child: Row(
              //     children: [
              //       Container(
              //
              //         // margin: EdgeInsets.only(top: 10.h,left: 30.w),
              //         height: 12.h,width:76.w,
              //         child: RatingBar.builder(
              //             initialRating: productModelList[i].productRating as double,
              //             minRating: 1,
              //             direction: Axis.horizontal,
              //             allowHalfRating: true,
              //             itemCount: 5,
              //             itemSize: 15.w,
              //             itemPadding: EdgeInsets.symmetric(horizontal: .1),
              //             itemBuilder: (context,i)=>Icon(Icons.star,color:Color(0xffFDC040) ,),
              //
              //             onRatingUpdate: (rating){}
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(left: 2.w,top: 5.h),
              //         height: 15.h,
              //         child: Text("(""${productModelList[i].ratingCount}"")",style: TextStyle(
              //           color: Color(0xFF333333),
              //           fontSize: 12.sp,
              //           fontWeight: FontWeight.w400,
              //         ),),
              //       )
              //     ],
              //   ),
              // ),
              Text("(" "0" ")"),

              //********Marker Red ******************
              Container(
                height: 10.h,
                width: 336.w,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbarPage(),
    );
  }
}
