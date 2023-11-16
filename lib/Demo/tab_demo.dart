import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../sevices/model/hot_deals_model.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(
        length: 3, vsync:this );
    return Stack(
      //clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          //alignment: Alignment.centerRight,
          width: 360.w,
          height: 400.h,
         // child:
        ),
        Positioned(
          top:10,
          child:  TabBar(
          isScrollable: true,
          indicatorColor: Colors.orangeAccent,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orangeAccent,
          ),
          labelColor: Colors.red,
          controller: _tabController,
          tabs: [
            Tab(text: 'Best Selling '),
            Tab(text: 'New Arrival'),
            Tab(text: 'Discounted Product'),
          ],
        ),),
        Positioned(
          //left: 15,
          top: 40,
          bottom: -230,
          child:   Container(
            height: 300.h,
            width: 360.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
            ),

            child: TabBarView(
              controller: _tabController,
              children: [
                Text("One..."),
                Text("Two..."),
                Text("Three..."),
              ],
            ),
          )
        ),
      ],
    );

    //   Container(
    //   height: 350.h,
    //   width: 360.w,
    //   color: Colors.lightGreen,
    //   child: Column(
    //     children: [
    //       Container(
    //         child: TabBar(
    //           indicatorColor: Colors.orangeAccent,
    //           indicatorSize: TabBarIndicatorSize.tab,
    //           indicator: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10),
    //            color: Colors.orangeAccent,
    //           ),
    //           labelColor: Colors.red,
    //           controller: _tabController,
    //           tabs: [
    //             Tab(text: 'Best Selling '),
    //             Tab(text: 'New Arrival'),
    //             Tab(text: 'Discounted Product'),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: 300.h,
    //         width: 360.w,
    //         child: TabBarView(
    //           controller: _tabController,
    //           children: [
    //             // Container(
    //             //   height: 322.h,
    //             //   width: 360.w,
    //             //   color: Colors.purple,
    //             //   child: GridView.builder(
    //             //     shrinkWrap: true,
    //             //     scrollDirection: Axis.horizontal,
    //             //     itemCount: productModelList.length,
    //             //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             //       crossAxisCount: 1,
    //             //       mainAxisExtent: 162, // number of items in each row
    //             //       mainAxisSpacing: 12.0.w, // spacing between rows
    //             //       // crossAxisSpacing: 4.0.h,
    //             //     ),
    //             //     itemBuilder: (context, i) {
    //             //       //*** Grids Design ****
    //             //       return Container(
    //             //         width: 162.w,
    //             //         height: 322.h,
    //             //         // padding: EdgeInsets.all(1),
    //             //         decoration: BoxDecoration(
    //             //           border: Border.all(
    //             //             // width: 1.13.w,
    //             //             color: Colors.red,
    //             //           ),
    //             //           borderRadius: BorderRadius.circular(10),
    //             //           //color: Colors.green,
    //             //         ),
    //             //         child: Column(
    //             //           children: [
    //             //             //Product Image
    //             //             Container(
    //             //               width: 154.w,
    //             //               height: 154.h,
    //             //               margin: EdgeInsets.only(bottom: 12.h),
    //             //               padding:
    //             //               EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
    //             //               decoration: BoxDecoration(
    //             //                 borderRadius: BorderRadius.circular(10),
    //             //                 color: Colors.white,
    //             //               ),
    //             //               child: Image.asset(
    //             //                 "${productModelList[i].productImg}",height: 154.h,width: 154.w,
    //             //                 fit: BoxFit.fill,
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 154.w,
    //             //               height: 15.h,
    //             //               padding: EdgeInsets.only(left: 1.w, right: 7.w),
    //             //               color: Colors.redAccent,
    //             //               child: Text(
    //             //                 "${productModelList[i].productName}",
    //             //                 style: TextStyle(
    //             //                     fontSize: 12.sp, fontWeight: FontWeight.w400),
    //             //                 maxLines: 1,
    //             //                 overflow: TextOverflow.ellipsis,
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 44.w,
    //             //               height: 17.h,
    //             //               color: Colors.redAccent,
    //             //               margin: EdgeInsets.only(top: 12.h, bottom: 12.h),
    //             //               child: Text(
    //             //                 "${productModelList[i].productUnit} : ${productModelList[i].productUnitType}",
    //             //                 style: TextStyle(
    //             //                     fontSize: 14.sp, fontWeight: FontWeight.w600),
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 67.w,
    //             //               height: 17.h,
    //             //               color: Colors.blue,
    //             //               margin:EdgeInsets.only(
    //             //                   left: 10.w, right: 10.w, bottom: 10.h),
    //             //               child: Row(
    //             //                 children: [
    //             //                   Text("${productModelList[i].discountedPrice}",
    //             //                       style: TextStyle(
    //             //                           fontSize: 14.sp,
    //             //                           fontWeight: FontWeight.w700)),
    //             //                   SizedBox(
    //             //                     width: 8.w,
    //             //                   ),
    //             //                   Text("${productModelList[i].productPrice}",
    //             //                       style: TextStyle(
    //             //                           fontSize: 12.sp,
    //             //                           fontWeight: FontWeight.w400)),
    //             //                 ],
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 90.w,
    //             //               height: 15.h,
    //             //               //color: Colors.black12,
    //             //               margin:
    //             //               EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8),
    //             //               child: RatingBar.builder(
    //             //                   initialRating: 5,
    //             //                   // initialRating: productModelList[i].productRating as double,
    //             //                   minRating: 1,
    //             //                   direction: Axis.horizontal,
    //             //                   allowHalfRating: true,
    //             //                   itemCount: 5,
    //             //                   itemSize: 15.w,
    //             //                   itemPadding: EdgeInsets.symmetric(horizontal: .1),
    //             //                   itemBuilder: (context,_)=>Icon(Icons.star,color:Color(0xffFDC040) ,),
    //             //
    //             //                   onRatingUpdate: (rating){}
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 162.w,
    //             //               height: 48.h,
    //             //               padding: EdgeInsets.only(
    //             //                   left: 13.w, right: 13.w, top: 8.h,bottom: 8),
    //             //               decoration: BoxDecoration(
    //             //                 borderRadius: BorderRadius.only(
    //             //                     bottomLeft: Radius.circular(10),
    //             //                     bottomRight: Radius.circular(10)),
    //             //                 color: Colors.grey,
    //             //               ),
    //             //               // child: ElevatedButton(
    //             //               //   style: ElevatedButton.styleFrom(
    //             //               //     primary: Colors.orange,
    //             //               //     fixedSize:
    //             //               //   ),
    //             //               //   onPressed: (){}, child: null,
    //             //               // ) ,
    //             //               child: GestureDetector(
    //             //                 onTap: () {},
    //             //                 child: Container(
    //             //                   width: 136.w,
    //             //                   height: 32.h,
    //             //                   //margin: ,
    //             //                   decoration: BoxDecoration(
    //             //                     borderRadius: BorderRadius.circular(5),
    //             //                     color: Colors.orange,
    //             //                   ),
    //             //                   child: Row(
    //             //                     children: [
    //             //                       Icon(Icons.add_shopping_cart),
    //             //                       Text("Add To Cart")
    //             //                     ],
    //             //                   ),
    //             //                 ),
    //             //               ),
    //             //             ),
    //             //           ],
    //             //         ),
    //             //       );
    //             //     },
    //             //     // gridDelegate: SLiv
    //             //   ),
    //             // ),
    //             // Container(
    //             //   height: 322.h,
    //             //   width: 360.w,
    //             //   color: Colors.purple.shade100,
    //             //   child: GridView.builder(
    //             //     shrinkWrap: true,
    //             //     scrollDirection: Axis.horizontal,
    //             //     itemCount: productModelList.length,
    //             //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             //       crossAxisCount: 1,
    //             //       mainAxisExtent: 162, // number of items in each row
    //             //       mainAxisSpacing: 12.0.w, // spacing between rows
    //             //       // crossAxisSpacing: 4.0.h,
    //             //     ),
    //             //     itemBuilder: (context, i) {
    //             //       //*** Grids Design ****
    //             //       return Container(
    //             //         width: 162.w,
    //             //         height: 322.h,
    //             //         // padding: EdgeInsets.all(1),
    //             //         decoration: BoxDecoration(
    //             //           border: Border.all(
    //             //             // width: 1.13.w,
    //             //             color: Colors.red,
    //             //           ),
    //             //           borderRadius: BorderRadius.circular(10),
    //             //           //color: Colors.green,
    //             //         ),
    //             //         child: Column(
    //             //           children: [
    //             //             //Product Image
    //             //             Container(
    //             //               width: 154.w,
    //             //               height: 154.h,
    //             //               margin: EdgeInsets.only(bottom: 12.h),
    //             //               padding:
    //             //               EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
    //             //               decoration: BoxDecoration(
    //             //                 borderRadius: BorderRadius.circular(10),
    //             //                 color: Colors.white,
    //             //               ),
    //             //               child: Image.asset(
    //             //                 "${productModelList[i].productImg}",height: 154.h,width: 154.w,
    //             //                 fit: BoxFit.fill,
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 154.w,
    //             //               height: 15.h,
    //             //               padding: EdgeInsets.only(left: 1.w, right: 7.w),
    //             //               color: Colors.redAccent,
    //             //               child: Text(
    //             //                 "${productModelList[i].productName}",
    //             //                 style: TextStyle(
    //             //                     fontSize: 12.sp, fontWeight: FontWeight.w400),
    //             //                 maxLines: 1,
    //             //                 overflow: TextOverflow.ellipsis,
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 44.w,
    //             //               height: 17.h,
    //             //               color: Colors.redAccent,
    //             //               margin: EdgeInsets.only(top: 12.h, bottom: 12.h),
    //             //               child: Text(
    //             //                 "${productModelList[i].productUnit} : ${productModelList[i].productUnitType}",
    //             //                 style: TextStyle(
    //             //                     fontSize: 14.sp, fontWeight: FontWeight.w600),
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 67.w,
    //             //               height: 17.h,
    //             //               color: Colors.blue,
    //             //               margin:EdgeInsets.only(
    //             //                   left: 10.w, right: 10.w, bottom: 10.h),
    //             //               child: Row(
    //             //                 children: [
    //             //                   Text("${productModelList[i].discountedPrice}",
    //             //                       style: TextStyle(
    //             //                           fontSize: 14.sp,
    //             //                           fontWeight: FontWeight.w700)),
    //             //                   SizedBox(
    //             //                     width: 8.w,
    //             //                   ),
    //             //                   Text("${productModelList[i].productPrice}",
    //             //                       style: TextStyle(
    //             //                           fontSize: 12.sp,
    //             //                           fontWeight: FontWeight.w400)),
    //             //                 ],
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 90.w,
    //             //               height: 15.h,
    //             //               //color: Colors.black12,
    //             //               margin:
    //             //               EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8),
    //             //               child: RatingBar.builder(
    //             //                   initialRating: 5,
    //             //                   // initialRating: productModelList[i].productRating as double,
    //             //                   minRating: 1,
    //             //                   direction: Axis.horizontal,
    //             //                   allowHalfRating: true,
    //             //                   itemCount: 5,
    //             //                   itemSize: 15.w,
    //             //                   itemPadding: EdgeInsets.symmetric(horizontal: .1),
    //             //                   itemBuilder: (context,_)=>Icon(Icons.star,color:Color(0xffFDC040) ,),
    //             //
    //             //                   onRatingUpdate: (rating){}
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 162.w,
    //             //               height: 48.h,
    //             //               padding: EdgeInsets.only(
    //             //                   left: 13.w, right: 13.w, top: 8.h,bottom: 8),
    //             //               decoration: BoxDecoration(
    //             //                 borderRadius: BorderRadius.only(
    //             //                     bottomLeft: Radius.circular(10),
    //             //                     bottomRight: Radius.circular(10)),
    //             //                 color: Colors.grey,
    //             //               ),
    //             //               // child: ElevatedButton(
    //             //               //   style: ElevatedButton.styleFrom(
    //             //               //     primary: Colors.orange,
    //             //               //     fixedSize:
    //             //               //   ),
    //             //               //   onPressed: (){}, child: null,
    //             //               // ) ,
    //             //               child: GestureDetector(
    //             //                 onTap: () {},
    //             //                 child: Container(
    //             //                   width: 136.w,
    //             //                   height: 32.h,
    //             //                   //margin: ,
    //             //                   decoration: BoxDecoration(
    //             //                     borderRadius: BorderRadius.circular(5),
    //             //                     color: Colors.orange,
    //             //                   ),
    //             //                   child: Row(
    //             //                     children: [
    //             //                       Icon(Icons.add_shopping_cart),
    //             //                       Text("Add To Cart")
    //             //                     ],
    //             //                   ),
    //             //                 ),
    //             //               ),
    //             //             ),
    //             //           ],
    //             //         ),
    //             //       );
    //             //     },
    //             //     // gridDelegate: SLiv
    //             //   ),
    //             // ),
    //             // Container(
    //             //   height: 322.h,
    //             //   width: 360.w,
    //             //   child: GridView.builder(
    //             //     shrinkWrap: true,
    //             //     scrollDirection: Axis.horizontal,
    //             //     itemCount: productModelList.length,
    //             //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             //       crossAxisCount: 1,
    //             //       mainAxisExtent: 162, // number of items in each row
    //             //       mainAxisSpacing: 12.0.w, // spacing between rows
    //             //       // crossAxisSpacing: 4.0.h,
    //             //     ),
    //             //     itemBuilder: (context, i) {
    //             //       //*** Grids Design ****
    //             //       return Container(
    //             //         width: 162.w,
    //             //         height: 322.h,
    //             //         // padding: EdgeInsets.all(1),
    //             //         decoration: BoxDecoration(
    //             //           border: Border.all(
    //             //             // width: 1.13.w,
    //             //             color: Colors.red,
    //             //           ),
    //             //           borderRadius: BorderRadius.circular(10),
    //             //           //color: Colors.green,
    //             //         ),
    //             //         child: Column(
    //             //           children: [
    //             //             //Product Image
    //             //             Container(
    //             //               width: 154.w,
    //             //               height: 154.h,
    //             //               margin: EdgeInsets.only(bottom: 12.h),
    //             //               padding:
    //             //               EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
    //             //               decoration: BoxDecoration(
    //             //                 borderRadius: BorderRadius.circular(10),
    //             //                 color: Colors.white,
    //             //               ),
    //             //               child: Image.asset(
    //             //                 "${productModelList[i].productImg}",height: 154.h,width: 154.w,
    //             //                 fit: BoxFit.fill,
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 154.w,
    //             //               height: 15.h,
    //             //               padding: EdgeInsets.only(left: 1.w, right: 7.w),
    //             //               color: Colors.redAccent,
    //             //               child: Text(
    //             //                 "${productModelList[i].productName}",
    //             //                 style: TextStyle(
    //             //                     fontSize: 12.sp, fontWeight: FontWeight.w400),
    //             //                 maxLines: 1,
    //             //                 overflow: TextOverflow.ellipsis,
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 44.w,
    //             //               height: 17.h,
    //             //               color: Colors.redAccent,
    //             //               margin: EdgeInsets.only(top: 12.h, bottom: 12.h),
    //             //               child: Text(
    //             //                 "${productModelList[i].productUnit} : ${productModelList[i].productUnitType}",
    //             //                 style: TextStyle(
    //             //                     fontSize: 14.sp, fontWeight: FontWeight.w600),
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 67.w,
    //             //               height: 17.h,
    //             //               color: Colors.blue,
    //             //               margin:EdgeInsets.only(
    //             //                   left: 10.w, right: 10.w, bottom: 10.h),
    //             //               child: Row(
    //             //                 children: [
    //             //                   Text("${productModelList[i].discountedPrice}",
    //             //                       style: TextStyle(
    //             //                           fontSize: 14.sp,
    //             //                           fontWeight: FontWeight.w700)),
    //             //                   SizedBox(
    //             //                     width: 8.w,
    //             //                   ),
    //             //                   Text("${productModelList[i].productPrice}",
    //             //                       style: TextStyle(
    //             //                           fontSize: 12.sp,
    //             //                           fontWeight: FontWeight.w400)),
    //             //                 ],
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 90.w,
    //             //               height: 15.h,
    //             //               //color: Colors.black12,
    //             //               margin:
    //             //               EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8),
    //             //               child: RatingBar.builder(
    //             //                   initialRating: 5,
    //             //                   // initialRating: productModelList[i].productRating as double,
    //             //                   minRating: 1,
    //             //                   direction: Axis.horizontal,
    //             //                   allowHalfRating: true,
    //             //                   itemCount: 5,
    //             //                   itemSize: 15.w,
    //             //                   itemPadding: EdgeInsets.symmetric(horizontal: .1),
    //             //                   itemBuilder: (context,_)=>Icon(Icons.star,color:Color(0xffFDC040) ,),
    //             //
    //             //                   onRatingUpdate: (rating){}
    //             //               ),
    //             //             ),
    //             //             Container(
    //             //               width: 162.w,
    //             //               height: 48.h,
    //             //               padding: EdgeInsets.only(
    //             //                   left: 13.w, right: 13.w, top: 8.h,bottom: 8),
    //             //               decoration: BoxDecoration(
    //             //                 borderRadius: BorderRadius.only(
    //             //                     bottomLeft: Radius.circular(10),
    //             //                     bottomRight: Radius.circular(10)),
    //             //                 color: Colors.grey,
    //             //               ),
    //             //               // child: ElevatedButton(
    //             //               //   style: ElevatedButton.styleFrom(
    //             //               //     primary: Colors.orange,
    //             //               //     fixedSize:
    //             //               //   ),
    //             //               //   onPressed: (){}, child: null,
    //             //               // ) ,
    //             //               child: GestureDetector(
    //             //                 onTap: () {},
    //             //                 child: Container(
    //             //                   width: 136.w,
    //             //                   height: 32.h,
    //             //                   //margin: ,
    //             //                   decoration: BoxDecoration(
    //             //                     borderRadius: BorderRadius.circular(5),
    //             //                     color: Colors.orange,
    //             //                   ),
    //             //                   child: Row(
    //             //                     children: [
    //             //                       Icon(Icons.add_shopping_cart),
    //             //                       Text("Add To Cart")
    //             //                     ],
    //             //                   ),
    //             //                 ),
    //             //               ),
    //             //             ),
    //             //           ],
    //             //         ),
    //             //       );
    //             //     },
    //             //     // gridDelegate: SLiv
    //             //   ),
    //             // ),
    //             Center(child: Text("One...")),
    //             Center(child: Text("Two...")),
    //             Center(child: Text("Three...")),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
