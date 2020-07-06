import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/login_screen.dart';
import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/register_screen.dart';
import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/welcome_screen.dart';
import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/course_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuse_code/screens/algo_screens/dp_screens/dp_home_screen.dart';

void main() => runApp(FuseCode());
class FuseCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData.dark(),
      initialRoute:'welcome_screen',
      routes: {
        'welcome_screen':(context )=>Welcome_Screen(),
        'login_screen':(context )=>Login_Screen(),
        'register_screen':(context )=>Register_Screen(),
        'course_screen':(context )=>Course_Screen(),
        'dp_home_screen':(context )=>DpHomeScreen(),

      },
    );
  }
}