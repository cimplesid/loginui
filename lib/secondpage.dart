import 'package:flutter/material.dart';
import 'thirdpage.dart';
class Secondpage extends StatelessWidget {

  Widget _buildPageContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.grey.shade800,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
             
              SizedBox(height: 50,),
              Container(width: 200, child: Icon(Icons.whatshot,size: 100.0,color: Colors.white,),),
              SizedBox(height: 50,),
              ListTile(
                title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email address:",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(Icons.email, color: Colors.white30,)
                  ),
                )
              ),
              Divider(color: Colors.grey.shade600,),
              ListTile(
                title: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password:",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    
                    icon: Icon(Icons.lock, color: Colors.white30,)
                  ),
                )
              ),
              Divider(color: Colors.grey.shade600,),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => Thirdpage()
                        ));
                      },
                      color: Colors.cyan,
                      child: Text('Login', style: TextStyle(color: Colors.white70, fontSize: 16.0),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text('Click on login to goto another page!', style: TextStyle(color: Colors.grey.shade500),)
            ],
          ),
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _buildPageContent(context),
      );
    }
}