import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget{

  @override
  LikePageState createState() => LikePageState();
}


class LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text('like'),
    );
  }
}