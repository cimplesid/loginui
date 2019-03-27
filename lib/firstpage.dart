import 'package:flutter/material.dart';
import 'secondpage.dart';

class Firstpage extends StatelessWidget {
  final String background = 'images/aw.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(background), fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.black.withOpacity(0.7),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    Text(
                      "Alan Walker's",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      "On My Way",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(color: Colors.white70),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white70),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text("Sign In".toUpperCase()),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Secondpage(),
                              ));
                        },
                      ),
                    ),
                    SizedBox(
                          height: 20.0,
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Click on Signin to goto another page!",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                       
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
