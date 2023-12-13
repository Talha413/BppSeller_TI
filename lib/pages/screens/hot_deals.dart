import 'package:bpp_seller_ti/pages/screens/hot_deals_details_page.dart';
import 'package:bpp_seller_ti/pages/screens/view_more_page.dart';
import 'package:bpp_seller_ti/sevices/model/hot_deals_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_countdown/slide_countdown.dart';

class HotDealsPage extends StatelessWidget {
  const HotDealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 383.h,
      width: 360.w,
      padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 24.h, top: 9.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Colors.orange,
      ),
      child: Column(
        children: [
          Container(
            width: 360.w,
            height: 20.h,
            //color: Colors.redAccent,
            margin: EdgeInsets.only(bottom: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hot Deals", style: TextStyle(fontSize: 14.sp)),
                Container(
                  height: 20.h,
                  width: 110.w,
                  //color: Colors.blue,
                  child: SlideCountdownSeparated(
                    //padding:EdgeInsets.symmetric(horizontal: 4.44.w) ,
                    separatorStyle: TextStyle(
                      color: Colors.white,
                    ),
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                    duration: const Duration(
                      hours: 12,
                    ),
                  ),
                ),
                Text("View More", style: TextStyle(fontSize: 12.sp,color: Color(0xFFFF8800)),),

                // TextButton(
                //   // style: ButtonStyle(
                //   //   backgroundColor:
                //   // ),
                //   onPressed: () {
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (context) => ViewMorePage()));
                //   },
                //
                //   child: Text("View More", style: TextStyle(fontSize: 12.sp)),
                // ),
              ],
            ),
          ),
          Container(
            height: 322.h,
            width: 360.w,
            //color: Colors.orange,
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
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HotDealsDetails(
                                hotDealsNameFromHome:
                                    productModelList[i].productName,
                                hotDealsImgFromHome:
                                    productModelList[i].productImg,
                              )),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => HotDealsDetails(productModel: productModelList[i])),
                    // );
                  },
                  child: Container(
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
                        Expanded(
                          child: Container(
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
                          width: 77.w,
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
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                              children: [
                                WidgetSpan(
                                  child: SizedBox(width: 4.w),
                                ),

                                TextSpan(
                                  text: "ট",
                                  style: TextStyle(
                                      color: Colors.black,
                                      //decoration: TextDecoration.lineThrough,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700),
                                ),
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
                                WidgetSpan(
                                  child: SizedBox(width: 2.w),
                                ),
                                TextSpan(
                                  text: "ট",
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
                          margin: EdgeInsets.only(
                              left: 10.w, right: 10.w, bottom: 8),
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
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: .1),
                                  itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Color(0xffFDC040),
                                      ),
                                  onRatingUpdate: (rating) {}),
                              Text(
                                "(" "10" ")",
                                style: TextStyle(fontSize: 12.sp),
                              ),
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
                              padding: EdgeInsets.only(left: 4.w),
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
                                  Text(
                                    "Add To Cart",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              // gridDelegate: SLiv
            ),
          ),
        ],
      ),

      // GridView.builder(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.horizontal,
      //   itemCount: productModelList.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 1, // number of items in each row
      //     mainAxisSpacing: 12.0.w, // spacing between rows
      //     //crossAxisSpacing: 4.0.h,
      //   ),
      //   itemBuilder: (context, i) {
      //     return Container(
      //       width: 162.w,
      //       height: 322.h,
      //       padding: EdgeInsets.all(1),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color:Colors.blueAccent,
      //       ),
      //
      //
      //
      //     );
      //   },
      //   // gridDelegate: SLiv
      // ),
    );
  }
}

//    EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h),
