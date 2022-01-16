import 'package:demo_shop_app/model/banner_model.dart';
import 'package:demo_shop_app/screens/screen_product_detail/page_product_detail.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late PageController _pageController;
  late ScrollController _scrollController = ScrollController();
  var withScreen;
  late List<BannerModel> listBanner = [
    BannerModel(
        image: 'images/one_tabview.png',
        title: 'Twerk it',
        content: 'Long 3/4 sleeve. sweartshirt',
        price: 200),
    BannerModel(
        image: 'images/two_tabview.png',
        title: 'Jacket in blue denim',
        content: 'Wrangler Vintage-style womens’s',
        price: 120),
    BannerModel(
        image: 'images/three_tabview.png',
        title: ' T-shirt Mark Lebon Julie',
        content: 'Get back to basics in this pared-down denim jacket',
        price: 50),
    BannerModel(
        image: 'images/one_tabview.png',
        title: 'Twerk it',
        content: 'Long 3/4 sleeve. sweartshirt',
        price: 200),
    BannerModel(
        image: 'images/two_tabview.png',
        title: 'Jacket in blue denim',
        content: 'Wrangler Vintage-style womens’s',
        price: 120),
    BannerModel(
        image: 'images/three_tabview.png',
        title: ' T-shirt Mark Lebon Julie',
        content: 'Get back to basics in this pared-down denim jacket',
        price: 50),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        _headerHome(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
          child: Divider(
            indent: 27,
            endIndent: 30,
            color: Colors.black,
            thickness: 0.1,
          ),
        ),
        _bannerHome(context),
        _listViewHome(context),
      ],
    ));
  }

  Widget _headerHome() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(left: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Product available:',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(188, 188, 188, 1.0),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '1338',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(47, 105, 248, 1.0),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    'New Collectior',
                    style: TextStyle(
                        letterSpacing: 0.5,
                        wordSpacing: 2,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(right: 27),
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

  Widget _bannerHome(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.41,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: listBanner.length,
            itemBuilder: (BuildContext context, int index) =>
                _mybannerHome(context, index, listBanner),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20),
          color: Color.fromRGBO(242, 242, 242, 1.0),
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            controller: _pageController,
            count: listBanner.length,
            effect: ScrollingDotsEffect(
                maxVisibleDots: 5,
                dotWidth: 6,
                dotHeight: 6,
                activeDotColor: Color.fromRGBO(47, 105, 248, 1.0)),
          ),
        )
      ],
    );
  }

  Widget _listViewHome(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            color: Colors.white,
            child: Text(
              'You may like',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 14,
              itemBuilder: (BuildContext context, index) =>
                  _myItemListView(context, index),
            ),
          )
        ],
      ),
    );
  }

  Widget _mybannerHome(
      BuildContext context, int index, List<BannerModel> listBanner) {
    return Container(
        color: Color.fromRGBO(242, 242, 242, 1.0),
        child: Column(children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10)),
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.grey,
                elevation: 30,
                // đổ bóng
                child: Image.asset(
                  listBanner[index].image,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 20,
                right: 22,
                child: DottedBorder(
                  strokeWidth: 1,
                  color: Color.fromRGBO(216, 216, 216, 1),
                  dashPattern: [9, 5, 14, 5],
                  child: SvgPicture.asset('images/like_icon.svg'),
                ),
              ),
              Positioned(
                  right: 25,
                  bottom: -15,
                  child: Container(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        shadows: [
                          BoxShadow(
                              color: Color.fromRGBO(47, 105, 248, 0.395245),
                              blurRadius: 8,
                              spreadRadius: -1,
                              offset: Offset(0, 13))
                        ],
                        color: Color.fromRGBO(47, 105, 248, 1.0)),
                    child: Ink(
                      width: 55,
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('images/shop_btn_icon.svg'),
                      ),
                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 27, top: 10),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                alignment: Alignment.center,
                child: Text(
                  'New',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(27, 10, 27, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listBanner[index].title,
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        listBanner[index].content,
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        softWrap: false,
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(106, 106, 106, 1.0)),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '€${listBanner[index].price}',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'VAT included',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(106, 106, 106, 1.0)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]));
  }

  Widget _myItemListView(BuildContext context, int index) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.235,
              margin: EdgeInsets.fromLTRB(17, 0, 18, 0),
              child: Hero(
                //phai boc hero ngoai card
                tag: 'itemlv$index',
                child: Card(
                  elevation: 20,
                  clipBehavior: Clip.antiAlias,
                  shadowColor: Color.fromRGBO(188, 188, 188, 0.7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            index: index,
                            key: ValueKey('$index'),
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      'images/lv_item1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 0, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Admin tran',
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                  ),
                  Text(
                    'GUCCI',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(106, 106, 106, 1.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 13,
          right: 30,
          child: DottedBorder(
            color: Color.fromRGBO(216, 216, 216, 1),
            strokeWidth: 1,
            dashPattern: [9, 5, 14, 5],
            child: SvgPicture.asset('images/like_icon.svg'),
          ),
        )
      ],
    );
  }
}
