import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopApp(),
    );
  }
}

class ShopApp extends StatefulWidget {
  @override
  ShopAppState createState() => ShopAppState();
}

class ShopAppState extends State<ShopApp> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 18,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                'Product available:',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromRGBO(
                                                        188, 188, 188, 1.0),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'New Collectior',
                                                style: TextStyle(
                                                    letterSpacing: 0.5,
                                                    wordSpacing: 2,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Expanded(child: SizedBox()),
                                      Expanded(
                                        child: Container(
                                            alignment: Alignment.bottomRight,
                                            child: Ink(
                                              width: 40,
                                              decoration: ShapeDecoration(
                                                  shape: CircleBorder(),
                                                  color: Color.fromRGBO(
                                                      255, 183, 1, 1.0),
                                                  shadows: [
                                                    BoxShadow(
                                                        blurRadius: 9,
                                                        spreadRadius: -1,
                                                        offset: Offset(0, 10),
                                                        color: Color.fromRGBO(
                                                            255,
                                                            183,
                                                            1,
                                                            0.3035))
                                                  ]),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: SvgPicture.asset(
                                                      'images/user_icon.svg')),
                                            )),
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    ),
                    Expanded(
                        flex: 7,
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  child: Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.black,
                                    thickness: 0.1,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 10,
                                  child: Stack(
                                    fit: StackFit.passthrough,
                                    children: [
                                      Container(
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(10)),
                                          clipBehavior: Clip.antiAlias,
                                          shadowColor: Colors.grey,
                                          elevation: 30,
                                          // đổ bóng
                                          child: Image.asset(
                                            'images/two_tabview.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: SvgPicture.asset(
                                            'images/like_icon.svg'),
                                        top: 15,
                                        right: 15,
                                      )
                                    ],
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 7),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)),
                                                clipBehavior: Clip.antiAlias,
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  ' New ',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white,
                                                    backgroundColor:
                                                        Colors.deepPurpleAccent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                flex: 10, child: SizedBox())
                                          ],
                                        )),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Twerk it',
                                            style: TextStyle(
                                                fontSize: 21,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        )),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Long 3/4 sleeve. sweartshirt',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color.fromRGBO(
                                                    106, 106, 106, 1.0)),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          color: Colors.purpleAccent,
                        )),
                  ],
                ),
              )),
          Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          alignment: Alignment.bottomLeft,
                          color: Colors.white,
                          child: Text(
                            'You may like',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 21),
                          ),
                        )),
                    Expanded(
                        flex: 8,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 14,
                          itemBuilder: (context, index) =>
                              _myItemListView(this, 3),
                        ))
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'images/like_icon.svg',
                color: Color.fromRGBO(216, 216, 216, 1.0),
              ),
              label: '', activeIcon: SvgPicture.asset(
            'images/like_icon.svg',
            color: Colors.blue,
          ),),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '')
        ],
        onTap: (value) {
          setState(() {
            _selected = value;
          });
        },
      ),
    );
  }

  Widget _myItemListView(Context, int count) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.fromLTRB(18, 0, 10, 0),
                child: Card(
                  elevation: 20,
                  clipBehavior: Clip.antiAlias,
                  shadowColor: Color.fromRGBO(188, 188, 188, 0.7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('images/lv_item1.png'),
                ),
              )),
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Admin tran',
                      maxLines: 1,
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'GUCCI',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(106, 106, 106, 1.0),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
