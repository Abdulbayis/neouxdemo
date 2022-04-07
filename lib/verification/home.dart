import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:neuox/api/get_mode.dart';
import 'package:neuox/api/get_mode.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Indivdualpost? result1;

  _getdata1() async {
    print("Dsdsad");
    http.Response result = await http.get(
      Uri.parse("http://learningapp.e8demo.com/api/home_page/"),
      // headers: {
      //   HttpHeaders.authorizationHeader: "bearer " + tocken,
      // },
    );
    final body = json.decode(result.body);

    // var data = json.decode(result.body);
    if (mounted)
      setState(() {
        result1 = Indivdualpost.fromJson(body);
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getdata1();
  }

  List indivdualpost = [];
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Course',
      style: optionStyle,
    ),
    Text(
      'Index 2: Exam',
      style: optionStyle,
    ),
    Text(
      'Index 3: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 4: Account',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(4.0),
      //   child: Container(
      //     height: 300,
      //     width: 600,
      //     child: Image.asset('lib/assets/img/nurs.png'),
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: result1 != null?
      Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: 
            Container(
              width: double.maxFinite,
              height: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/assets/img/nurs.png')),
                  color: Colors.black12),
            ),

          ),
          ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 310),
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "http://learningapp.e8demo.com" +
                                      result1!.horizontalSlider[0].data![0]
                                          .listingImage
                                          .toString()),
                              fit: BoxFit.cover,
                              
                            ),
                            border:Border.all(
                              color: Colors.white,
                              width: 8,
                            ) ,
                            borderRadius: BorderRadius.circular(20),
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 250,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'Basic',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                child: Text(
                                    (result1!.horizontalSlider[0].data![0]
                                        .description
                                        .toString()),
                                    style: TextStyle(
                                        fontSize: 5,
                                        )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, left: 2),
                                child: Text(
                                  'AED' +
                                      result1!.horizontalSlider[0].data![0]
                                          .price
                                          .toString(),
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 3),
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  height: 30,
                                  width: 100,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
          Positioned(
            left: 15,
            right: 0,
            bottom: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our Course ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ):Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call_outlined,
              color: Colors.black,
            ),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: Colors.black,
            ),
            label: 'Exam',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        // onTap: _onItemTapped,
        onTap: (index) {
          setState(() {
            _selectedIndex:
            index;
          });
        },
      ),
    );
  }
}
