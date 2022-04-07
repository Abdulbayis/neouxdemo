import 'package:flutter/material.dart';
import 'package:neuox/login.dart';
import 'package:neuox/sign_in.dart';

class Registrationpage extends StatelessWidget {
  const Registrationpage({ Key? key }) : super(key: key);
  static const String _title = 'video';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ), 
  title: Text(""),
  centerTitle: true,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  TextEditingController nameController = TextEditingController();
  TextEditingController Country = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF034071)),
                )),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                // obscureText: true,
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                // obscureText: true,
                controller: Country,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Country',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                // obscureText: true,
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                ),
              ),
            ),
            
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: ElevatedButton(
                  child: const Text('Sign in',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
                  },
                )
            ),
            SizedBox(
              height: 50,
            ),
            // Text('New User?'),
            FlatButton(
              onPressed: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginDemo()),
                );
              },
              child: Text(
                'sign in',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ));
  }
}