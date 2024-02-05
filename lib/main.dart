import 'package:flutter/material.dart';
import 'package:slide_up_login/presentation/login_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:const  Color(0xff07193f),
        primaryColorLight:const  Color(0xff2d55ee) ,

        bottomSheetTheme:const  BottomSheetThemeData(
          surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent)
      ),
      home: LoginScreen(),
    );
  }
}
