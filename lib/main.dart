import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multivendor_ui_kit/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              textTheme: GoogleFonts.latoTextTheme(
                TextTheme(),
              ),
            ),
            initialRoute: "/",
            onGenerateRoute: _onGenerateRoute,
          ),
    );
  }


  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (BuildContext context) {
          return Home();
        });
      // case "/store":
      //   return MaterialPageRoute(builder: (BuildContext context) {
      //     // return Store();
      //   });
      // case "/watch-details":
      //   return MaterialPageRoute(builder: (BuildContext context) {
          // return WatchDetails(
          //   watch: arguments["watch"],
          //   tag: arguments["tag"],
          // );
        // });
      default:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const Home();
        });
    }
  }

}
