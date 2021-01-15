import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter_splash_screen/LoginAndRegister/logreg.dart';
import 'package:sample_flutter_splash_screen/LoginAndRegister/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GameAppex.com',
        color: Colors.lightBlue,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightBlue,
        ),
        home: SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displaySplash();
  }

  displaySplash()
  {
    Timer(Duration(seconds: 5) , () async {
      //Route route = MaterialPageRoute(builder: (_) => Register());
      //Navigator.pushReplacement(context, route);
      Route route = MaterialPageRoute(builder: (c) => LogReg());
      Navigator.pushReplacement(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: const FractionalOffset(0.0 , 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/welcome.png"),
            SizedBox(height: 2.0,),
            Text("Welcome to GameAppex.com",
            style: TextStyle(color: Colors.grey,),),
            SizedBox(height: 220.0,),
            Text("from GameAppex.com",
            style: TextStyle(color: Colors.grey, fontSize: 20.0,),),
          ],
        ),
      ),
    );
  }
}
