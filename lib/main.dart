import 'package:akthar/view/provider/auth_provider.dart';
import 'package:akthar/view/provider/home_provider.dart';
import 'package:akthar/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(360, 690),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>AuthProvider()),
                    ChangeNotifierProvider(create: (_)=>HomeProvider())

        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: "Poppins",
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          darkTheme: ThemeData.dark(), // standard dark theme
          themeMode: ThemeMode.system, // device controls theme
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
