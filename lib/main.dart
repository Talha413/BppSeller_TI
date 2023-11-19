import 'package:bpp_seller_ti/demo_Home.dart';
import 'package:bpp_seller_ti/pages/home_page.dart';
import 'package:bpp_seller_ti/pages/screens/popular_on_bpp_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //@override
  // void initState() {
  //   // TODO: implement initState
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: [SystemUiOverlay.bottom]);
  //   super.initState();
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Bpp_Seller_TI',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              initialRoute: 'initialRoute',
              routes: {
                'initialRoute': (context)=>HomePage(),
                'initialRoute': (context)=>HomePage(),
                'initialRoute': (context)=>HomePage(),
                'initialRoute': (context)=>HomePage(),
              },
              home:HomePage());
        });
  }
}
