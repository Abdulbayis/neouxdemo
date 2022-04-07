import 'package:flutter/material.dart';
import 'package:neuox/registration.dart';
import 'package:neuox/sign_in.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          // title: Text("Sign up"),
          ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color(0xFF034071)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: RaisedButton(
                padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0,),
                color: Color.fromRGBO(249, 250, 251, 1),
                onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Registrationpage()),
              ); 
                },
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image.asset(
                      'lib/assets/img/mail.png',
                      height: 48.0,
                    ),
                    new Container(
                        padding: EdgeInsets.only(left: 30.0, right: 15.0),
                        child: new Text(
                          "Sign in with Email",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 5, 5, 1),
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('-------------R------------'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: RaisedButton(
                padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
                color: Color.fromRGBO(249, 250, 251, 1),
                onPressed: () {},
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image.asset(
                      'lib/assets/img/google.png',
                      height: 48.0,
                    ),
                    new Container(
                        padding: EdgeInsets.only(left: 22.0, right: 15.0),
                        child: new Text(
                          "Sign in with Google",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 5, 5, 1),
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: RaisedButton(
                padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
                color: Color.fromRGBO(249, 250, 251, 1),
                onPressed: () {},
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image.asset(
                      'lib/assets/img/fb.png',
                      height: 48.0,
                    ),
                    new Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: new Text(
                          "Sign in with Facebook",
                          style: TextStyle(
                              color: Color.fromRGBO(5, 5, 5, 1),
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: FlatButton(
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginDemo()),
                );
                },
                child: Text(
                  'sign in',
                  style: TextStyle(color: Colors.blue, fontSize: 19),
                ),
              ),
          ),
        ]),
      ),
    );
  }
}
