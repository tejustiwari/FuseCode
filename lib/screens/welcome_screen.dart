import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/register_screen.dart';
import 'file:///C:/Users/Tejas/AndroidStudioProjects/fuse_code/lib/screens/initial_screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fuse_code/components/rounded_button.dart';

void main() => runApp(Welcome_Screen());
class Welcome_Screen extends StatefulWidget {
  @override
  _Welcome_ScreenState createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        backgroundColor: Colors.teal,
        body:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,

                children:<Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Hero(
                      tag:'logo',
                    child:Container(
                      child: Image.asset('lib/images/logo.png'),
                      height: 50.0,
                    ),
                    ),
                    Text(
                      'FuseCode ',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                  SizedBox(
                    height: 50.0,
                  ),
                  RoundedButton(

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login_Screen()),
                        );
                      },
                      
                    colour: Colors.grey,
                    title: 'Login',
                    ),

                  RoundedButton(

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register_Screen()),
                      );
                    },

                    colour: Colors.grey,
                    title: 'Register',
                  ),
          ],
            ),
                  ),
            );
  }
}
