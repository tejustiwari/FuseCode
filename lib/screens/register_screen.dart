import 'package:flutter/material.dart';
import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/home_design_course.dart';
import 'package:fuse_code/components/rounded_button.dart';
import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/login_screen.dart';
import 'package:fuse_code/screens/initial_screens/course_screen.dart';

void main() => runApp(Register_Screen());
class Register_Screen extends StatefulWidget {
  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      backgroundColor: Colors.blueGrey,
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Flexible(
              child: Hero(
                tag:'logo',
                child:Container(
                  child: Image.asset('lib/images/logo.png'),
                  height: 200.0,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter your email',
//****UNCOMMENT THIS (WHILE/IF YOU ARE) USING DARK THEME IN MAIN FUNCTION
//                hintStyle: TextStyle(
//                  color: Colors.black38,
//                  fontSize: 17.0,
//                ),
              //*****
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height:28,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Set your Password',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: 17.0,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            RoundedButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DesignCourseHomeScreen()),
                );
              },

              colour: Colors.teal,
              title: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}





