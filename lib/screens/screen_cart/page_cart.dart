import 'package:demo_shop_app/main.dart';
import 'package:demo_shop_app/model/product_model.dart';
import 'package:demo_shop_app/screens/screen_product_detail/page_product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class CartPage extends StatefulWidget {
  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  late PageController _pageController;
  late ScrollController _scrollController = ScrollController();
  var myListProduct = ShopAppState.myList.myListProduct;
  var withScreen;

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
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: _headerHome(context),
          ),
          Expanded(
            flex: 2,
            child: _discountCart(context),
          ),
          Expanded(
            flex: 7,
            child: _listViewHome(context),
          ),
        ],
      )),
    );
  }

  Widget _discountCart(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: Color.fromRGBO(233, 233, 233, 1.0), width: 1))),
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(106, 106, 106, 0.1),
                    borderRadius: BorderRadiusDirectional.circular(6)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color.fromRGBO(255, 234, 182, 1.0)),
                          child: SvgPicture.asset(
                            'images/icon_gift.svg',
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-10%',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(47, 105, 248, 1.0)),
                            ),
                            Text(
                              'Enjoy Student Discount',
                              overflow: TextOverflow.fade,
                              maxLines: 2,
                              softWrap: false,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(106, 106, 106, 0.1),
                  borderRadius: BorderRadiusDirectional.circular(6)),
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 2),
              child: Text(
                'GIVE A GIFT',
                style: TextStyle(
                    fontSize: 9, color: Color.fromRGBO(47, 105, 248, 1.0)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _headerHome(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(left: 25, top: 20),
              child: Text(
                'Cart',
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

  Widget _listViewHome(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        itemCount: myListProduct.length,
        itemBuilder: (BuildContext context, index) =>
            _myItemListView(context, index, myListProduct[index]),
      ),
    );
  }

  Widget _myItemListView(BuildContext context, int index, ProductModel myProduct) {
    return Slidable(
      key: ValueKey(index.toString()),
      endActionPane: ActionPane(
        dragDismissible: true,
        motion: ScrollMotion(),
        extentRatio: 0.2,     //chinh do rong cua Slidable,(1 la 100%)
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
              flex: 3,
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
              onPressed: (context) {
                print('asdsad');
              }),
        ],
      ),
      child: Container(
          margin: EdgeInsets.only(bottom: 15, left: 23, right: 27),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Container(
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
                          myProduct.image_item_cart,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                myProduct.name,
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 14),
                              ),
                              Text(
                                myProduct.type,
                                style: TextStyle(height: 3),
                              ),
                              Text('Size: ${myProduct.size.toString()}', style: TextStyle(height: 1.2)),
                              Container(
                                child: Row(
                                  children: [
                                    Text('Color: ',
                                        style: TextStyle(height: 1.2)),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color: Color(int.parse('0xFF${myProduct.color}'))),
                                    ),
                                  ],
                                ),
                              ),
                              Text('Quanlity: ${myProduct.quantity.toString()}',
                                  style: TextStyle(height: 1.2)),
                            ],
                          ),
                        ),
                        Text(
                          '€${myProduct.price.toString()}',
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(47, 105, 248, 1.0))
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
