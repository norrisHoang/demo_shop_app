import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatefulWidget {
  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      _headerSearch(context),
      _searchBar(context),
      _listViewHome(context),
      // _buildTabBar(context),
                  Container(child: Text("My recent searches"),)
    ]))));
  }

  Widget _buildTabBar(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
      child: TabBar(
        controller: _tabController,
        // give the indicator a decoration (color and border radius)
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          color: Colors.green,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        tabs: const [
          // First tab
          Tab(
            text: 'Place Bid',
          ),
          // Second tab
          Tab(
            text: 'Buy Now',
          ),
          // Third tab
          Tab(
            text: 'DMM',
          ),
        ],
      ),
    );
  }

  Widget _listViewHome(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 14,
        itemBuilder: (BuildContext context, index) =>
            _myItemListView(context, index),
      ),
    );
  }

  Widget _myItemListView(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.32,
      margin: EdgeInsets.fromLTRB(17, 0, 18, 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(216, 216, 216, 0.4),
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: SvgPicture.asset("images/icon_shirt.svg"),
          ),
          SizedBox(height: 10,),
          Text(
            'Shirt',
            maxLines: 1,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff2F69F8),
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Color.fromRGBO(233, 233, 233, 1.0), width: 1))),
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(106, 106, 106, 0.1),
              borderRadius: BorderRadiusDirectional.circular(6)),
          child: TextField(
            autofocus: false,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: "What are you looking",
              border: InputBorder.none,
            ),
          ),
        ));
  }

  Widget _headerSearch(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(left: 25, top: 20),
              child: Text(
                'Search',
                style: TextStyle(
                    letterSpacing: 0.5,
                    wordSpacing: 2,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(right: 25),
                alignment: Alignment.centerRight,
                child: Container(
                  width: 40,
                  decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color.fromRGBO(255, 183, 1, 1.0),
                      shadows: [
                        BoxShadow(
                            blurRadius: 9,
                            spreadRadius: -1,
                            offset: Offset(0, 10),
                            color: Color.fromRGBO(255, 183, 1, 0.3035))
                      ]),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('images/user_icon.svg')),
                ),
              ))
        ],
      ),
    );
  }
}
