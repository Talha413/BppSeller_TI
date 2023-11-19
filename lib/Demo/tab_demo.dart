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
    TabController _tabController = TabController(length: 3, vsync: this);
    return Stack(
      //clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
           // color: Colors.red,
          ),
          //alignment: Alignment.centerRight,
          width: 360.w,
          height: 414.h,
          // child:
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 60.h,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.orangeAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicator: UnderlineTabIndicator(
              //   //  borderSide: BorderSide(width: 5.0),
              //   insets: EdgeInsets.symmetric(horizontal:16.0),
              //   borderRadius: BorderRadius.circular(10),
              // ),
              indicator: BoxDecoration(
                //insets: EdgeInsets.symmetric(horizontal:16.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                color: Colors.orangeAccent,
              ),
              labelColor: Colors.red,
              controller: _tabController,
              tabs: [
                Container(
                  height: 60.0,
                  width: 82.w,
                  padding: EdgeInsets.only(bottom: 13.h),
                  // color: Colors.red,
                  child: Tab(text: 'Best Selling '),
                ),
                Container(
                  height: 60.0,
                  width: 82.w,
                  padding: EdgeInsets.only(bottom: 13.h),
                  // color: Colors.red,
                  child: Tab(text: 'New Arrival'),
                ),
                Container(
                  height: 60.0,
                  width: 120.w,
                  padding: EdgeInsets.only(bottom: 13.h),
                  // color: Colors.red,
                  child: Tab(text: 'Discounted Product'),
                ),
                // Tab(text: 'Best Selling '),
                // Tab(text: 'New Arrival'),
                // Tab(text: 'Discounted Product'),
              ],
            ),
          ),
        ),
        Positioned(
            //left: 15,
            top: 47,
            // bottom: -230,
            child: Container(
              height: 381.h,
              width: 360.w,
              padding: EdgeInsets.only(
                  left: 12.w, right: 12.w, top: 12.h, bottom: 24.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      Container(
                          height: 15.h,
                          width: 60.w,
                          color: Colors.yellowAccent,
                          margin: EdgeInsets.only(left:260.w,right: 12.w,bottom: 8.h),
                          child: Text(
                            "View More",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                      Container(
                        height: 322.h,
                        width: 360.w,
                        child: GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: productModelList.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 162, // number of items in each row
                            mainAxisSpacing: 12.0.w, // spacing between rows
                            // crossAxisSpacing: 4.0.h,
                          ),
                          itemBuilder: (context, i) {
                            //*** Grids Design ****
                            return Container(
                              width: 162.w,
                              height: 322.h,
                              // padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  // width: 1.13.w,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.green,
                              ),
                              child: Column(
                                children: [
                                  //Product Image
                                  Container(
                                    width: 154.w,
                                    height: 154.h,
                                    margin: EdgeInsets.only(bottom: 12.h),
                                    padding:
                                    EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(
                                      "${productModelList[i].productImg}",
                                      height: 154.h,
                                      width: 154.w,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: 154.w,
                                    height: 30.h,
                                    padding: EdgeInsets.only(left: 1.w, right: 7.w),
                                    //color: Colors.redAccent,
                                    child: Text(
                                      "${productModelList[i].productName}",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      //overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    width: 60.w,
                                    height: 17.h,
                                    //color: Colors.redAccent,
                                    margin: EdgeInsets.only(top: 3.h, bottom: 6.h),
                                    child: Text(
                                      "${productModelList[i].productUnit} : ${productModelList[i].productUnitType}",
                                      style: TextStyle(
                                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    width: 67.w,
                                    height: 17.h,
                                    //color: Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 11.w, right: 10.w, bottom: 10.h),
                                    // child: Row(
                                    //   children: [
                                    //     Text("${productModelList[i].discountedPrice}",
                                    //         style: TextStyle(
                                    //             fontSize: 14.sp,
                                    //             fontWeight: FontWeight.w700)),
                                    //     SizedBox(
                                    //       width: 8.w,
                                    //     ),
                                    //     Text("${productModelList[i].productPrice}",
                                    //         style: TextStyle(
                                    //             fontSize: 12.sp,
                                    //             fontWeight: FontWeight.w400)),
                                    //   ],
                                    // ),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "${productModelList[i].discountedPrice}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp, fontWeight: FontWeight.w700),
                                        children: [
                                          WidgetSpan(
                                            child: SizedBox(width: 4.w),
                                          ),

                                          TextSpan(
                                            text: "${productModelList[i].productPrice}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400),

                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 101.w,
                                    height: 15.h,
                                    //color: Colors.black12,
                                    margin:
                                    EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8),
                                    child: Row(
                                      children: [
                                        RatingBar.builder(
                                            initialRating: 5,
                                            // initialRating: productModelList[i].productRating as double,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 15.w,
                                            itemPadding: EdgeInsets.symmetric(horizontal: .1),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Color(0xffFDC040),
                                            ),
                                            onRatingUpdate: (rating) {}),
                                        Text("(" "10" ")",style: TextStyle(fontSize: 12.sp),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 162.w,
                                    height: 48.h,
                                    padding: EdgeInsets.only(
                                        left: 13.w, right: 13.w, top: 8.h, bottom: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.grey,
                                    ),
                                    // child: ElevatedButton(
                                    //   style: ElevatedButton.styleFrom(
                                    //     primary: Colors.orange,
                                    //     fixedSize:
                                    //   ),
                                    //   onPressed: (){}, child: null,
                                    // ) ,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 136.w,
                                        height: 32.h,
                                        padding: EdgeInsets.only(
                                            left: 4.w),
                                        // padding: EdgeInsets.only(
                                        //     left: 3.w, right: 13.w, top: 8.h, bottom: 8),
                                        //margin: ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.orange,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.add_shopping_cart),
                                            Text("Add To Cart",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          // gridDelegate: SLiv
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 15.h,
                          width: 60.w,
                          color: Colors.yellowAccent,
                          margin: EdgeInsets.only(left:260.w,right: 12.w,bottom: 8.h),
                          child: Text(
                            "View More",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                      Container(
                        height: 322.h,
                        width: 360.w,
                        child: GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: productModelList.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 162, // number of items in each row
                            mainAxisSpacing: 12.0.w, // spacing between rows
                            // crossAxisSpacing: 4.0.h,
                          ),
                          itemBuilder: (context, i) {
                            //*** Grids Design ****
                            return Container(
                              width: 162.w,
                              height: 322.h,
                              // padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  // width: 1.13.w,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.green,
                              ),
                              child: Column(
                                children: [
                                  //Product Image
                                  Container(
                                    width: 154.w,
                                    height: 154.h,
                                    margin: EdgeInsets.only(bottom: 12.h),
                                    padding:
                                    EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(
                                      "${productModelList[i].productImg}",
                                      height: 154.h,
                                      width: 154.w,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: 154.w,
                                    height: 30.h,
                                    padding: EdgeInsets.only(left: 1.w, right: 7.w),
                                    //color: Colors.redAccent,
                                    child: Text(
                                      "${productModelList[i].productName}",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      //overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    width: 60.w,
                                    height: 17.h,
                                    //color: Colors.redAccent,
                                    margin: EdgeInsets.only(top: 3.h, bottom: 6.h),
                                    child: Text(
                                      "${productModelList[i].productUnit} : ${productModelList[i].productUnitType}",
                                      style: TextStyle(
                                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    width: 67.w,
                                    height: 17.h,
                                    //color: Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 11.w, right: 10.w, bottom: 10.h),
                                    // child: Row(
                                    //   children: [
                                    //     Text("${productModelList[i].discountedPrice}",
                                    //         style: TextStyle(
                                    //             fontSize: 14.sp,
                                    //             fontWeight: FontWeight.w700)),
                                    //     SizedBox(
                                    //       width: 8.w,
                                    //     ),
                                    //     Text("${productModelList[i].productPrice}",
                                    //         style: TextStyle(
                                    //             fontSize: 12.sp,
                                    //             fontWeight: FontWeight.w400)),
                                    //   ],
                                    // ),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "${productModelList[i].discountedPrice}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp, fontWeight: FontWeight.w700),
                                        children: [
                                          WidgetSpan(
                                            child: SizedBox(width: 4.w),
                                          ),

                                          TextSpan(
                                            text: "${productModelList[i].productPrice}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400),

                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 101.w,
                                    height: 15.h,
                                    //color: Colors.black12,
                                    margin:
                                    EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8),
                                    child: Row(
                                      children: [
                                        RatingBar.builder(
                                            initialRating: 5,
                                            // initialRating: productModelList[i].productRating as double,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 15.w,
                                            itemPadding: EdgeInsets.symmetric(horizontal: .1),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Color(0xffFDC040),
                                            ),
                                            onRatingUpdate: (rating) {}),
                                        Text("(" "10" ")",style: TextStyle(fontSize: 12.sp),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 162.w,
                                    height: 48.h,
                                    padding: EdgeInsets.only(
                                        left: 13.w, right: 13.w, top: 8.h, bottom: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.grey,
                                    ),
                                    // child: ElevatedButton(
                                    //   style: ElevatedButton.styleFrom(
                                    //     primary: Colors.orange,
                                    //     fixedSize:
                                    //   ),
                                    //   onPressed: (){}, child: null,
                                    // ) ,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 136.w,
                                        height: 32.h,
                                        padding: EdgeInsets.only(
                                            left: 4.w),
                                        // padding: EdgeInsets.only(
                                        //     left: 3.w, right: 13.w, top: 8.h, bottom: 8),
                                        //margin: ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.orange,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.add_shopping_cart),
                                            Text("Add To Cart",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          // gridDelegate: SLiv
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 15.h,
                          width: 60.w,
                          color: Colors.yellowAccent,
                          margin: EdgeInsets.only(left:260.w,right: 12.w,bottom: 8.h),
                          child: Text(
                            "View More",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                      Container(
                        height: 322.h,
                        width: 360.w,
                        child: GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: productModelList.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 162, // number of items in each row
                            mainAxisSpacing: 12.0.w, // spacing between rows
                            // crossAxisSpacing: 4.0.h,
                          ),
                          itemBuilder: (context, i) {
                            //*** Grids Design ****
                            return Container(
                              width: 162.w,
                              height: 322.h,
                              // padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  // width: 1.13.w,
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.green,
                              ),
                              child: Column(
                                children: [
                                  //Product Image
                                  Container(
                                    width: 154.w,
                                    height: 154.h,
                                    margin: EdgeInsets.only(bottom: 12.h),
                                    padding:
                                    EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(
                                      "${productModelList[i].productImg}",
                                      height: 154.h,
                                      width: 154.w,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: 154.w,
                                    height: 30.h,
                                    padding: EdgeInsets.only(left: 1.w, right: 7.w),
                                    //color: Colors.redAccent,
                                    child: Text(
                                      "${productModelList[i].productName}",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      //overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    width: 60.w,
                                    height: 17.h,
                                    //color: Colors.redAccent,
                                    margin: EdgeInsets.only(top: 3.h, bottom: 6.h),
                                    child: Text(
                                      "${productModelList[i].productUnit} : ${productModelList[i].productUnitType}",
                                      style: TextStyle(
                                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Container(
                                    width: 67.w,
                                    height: 17.h,
                                    //color: Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: 11.w, right: 10.w, bottom: 10.h),
                                    // child: Row(
                                    //   children: [
                                    //     Text("${productModelList[i].discountedPrice}",
                                    //         style: TextStyle(
                                    //             fontSize: 14.sp,
                                    //             fontWeight: FontWeight.w700)),
                                    //     SizedBox(
                                    //       width: 8.w,
                                    //     ),
                                    //     Text("${productModelList[i].productPrice}",
                                    //         style: TextStyle(
                                    //             fontSize: 12.sp,
                                    //             fontWeight: FontWeight.w400)),
                                    //   ],
                                    // ),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "${productModelList[i].discountedPrice}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp, fontWeight: FontWeight.w700),
                                        children: [
                                          WidgetSpan(
                                            child: SizedBox(width: 4.w),
                                          ),

                                          TextSpan(
                                            text: "${productModelList[i].productPrice}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400),

                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 101.w,
                                    height: 15.h,
                                    //color: Colors.black12,
                                    margin:
                                    EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8),
                                    child: Row(
                                      children: [
                                        RatingBar.builder(
                                            initialRating: 5,
                                            // initialRating: productModelList[i].productRating as double,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 15.w,
                                            itemPadding: EdgeInsets.symmetric(horizontal: .1),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Color(0xffFDC040),
                                            ),
                                            onRatingUpdate: (rating) {}),
                                        Text("(" "10" ")",style: TextStyle(fontSize: 12.sp),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 162.w,
                                    height: 48.h,
                                    padding: EdgeInsets.only(
                                        left: 13.w, right: 13.w, top: 8.h, bottom: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      color: Colors.grey,
                                    ),
                                    // child: ElevatedButton(
                                    //   style: ElevatedButton.styleFrom(
                                    //     primary: Colors.orange,
                                    //     fixedSize:
                                    //   ),
                                    //   onPressed: (){}, child: null,
                                    // ) ,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 136.w,
                                        height: 32.h,
                                        padding: EdgeInsets.only(
                                            left: 4.w),
                                        // padding: EdgeInsets.only(
                                        //     left: 3.w, right: 13.w, top: 8.h, bottom: 8),
                                        //margin: ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.orange,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.add_shopping_cart),
                                            Text("Add To Cart",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          // gridDelegate: SLiv
                        ),
                      ),
                    ],
                  ),
                  // Text("One..."),
                  // Text("Two..."),
                  // Text("Three..."),
                ],
              ),
            )),
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
