import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';



class LogReg extends StatefulWidget {
  @override
  _LogRegState createState() => _LogRegState();
}

class _LogRegState extends State<LogReg> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlue,],
                  begin: const FractionalOffset(0.0 , 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            title: Text(
              "GameAppex.com",
              style: TextStyle(fontSize: 50.0, color: Colors.white, fontFamily: "Signatra",),
            ),
            centerTitle: true,
            bottom: TabBar(
              unselectedLabelColor: Colors.white60,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.lock, color: Colors.white,),
                  text: "Login",
                ),
                Tab(
                  icon: Icon(Icons.perm_contact_calendar, color: Colors.white,),
                  text: "Register",
                ),
              ],
              indicatorColor: Colors.white38,
              indicatorWeight: 5.0,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.white, Colors.white,],
                begin: Alignment.bottomLeft,
                end: const FractionalOffset(1.0, 0.0),
              ),
            ),
            child: TabBarView(
              children: [
                Login(),
                Register(),
              ],
            ),
          ),
        ),
    );
  }
}
