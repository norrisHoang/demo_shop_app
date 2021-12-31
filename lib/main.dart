
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              flex: 17,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        color: Colors.yellow,
                        child: Text(
                          'gg',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 7,
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: SizedBox(
                                  height: 40,
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 0.2,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Image.network(
                                      'https://blogchiasekienthuc.com/wp-content/uploads/2020/01/gg-trong-game-la-gi-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.purpleAccent,
                        )),
                  ],
                ),
              )),
          Expanded(
              flex: 11,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.redAccent,
                        )),
                    Expanded(
                        flex: 8,
                        child: Container(
                          color: Colors.yellow,
                        ))
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.redAccent,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.greenAccent,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.indigoAccent,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.cyan,
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
