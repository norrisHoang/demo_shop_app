import 'package:demo_shop_app/main.dart';
import 'package:demo_shop_app/model/product_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailPage extends StatefulWidget {
  final int index;

  ProductDetailPage({required this.index, Key? key}) : super(key: key);

  @override
  _productDetailPageState createState() => _productDetailPageState();
}

class _productDetailPageState extends State<ProductDetailPage> {
  var myListProduct = ShopAppState.myList.myListProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _bannerProduct(context),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    alignment: Alignment.center,
                    child: Text(
                      'GOOD PRICE',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              _nameHeader(context),
              _infoMaterial(context),
              _voteItem(context),
              _productDescription(context),
              _listViewProduct(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _listViewProduct(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            color: Colors.white,
            child: Text(
              'More from Wrangler',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myListProduct.length,
              itemBuilder: (BuildContext context, index) =>
                  _myItemListViewProduct(context, index, myListProduct[index]),
            ),
          )
        ],
      ),
    );
  }

  Widget _productDescription(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      margin: EdgeInsets.fromLTRB(20, 10, 23, 30),
      color: Colors.white,
      child: Text(
        myListProduct[widget.index].detail,
        style: TextStyle(fontSize: 13, height: 2),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _voteItem(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.07,
        margin: EdgeInsets.fromLTRB(20, 10, 23, 0),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: Colors.grey, width: 0.3),
                bottom: BorderSide(color: Colors.grey, width: 0.2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'images/icon_vote.svg',
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    '${myListProduct[widget.index].vote}/5',
                    style: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(106, 106, 106, 1.0)),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Text(
                        'Reviews ${myListProduct[widget.index].review}',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(106, 106, 106, 1.0)),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  'images/icon_more.svg',
                ),
              ],
            )
          ],
        ));
  }

  Widget _infoMaterial(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.04,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(20, 10, 23, 0),
        child: Row(
          children: [
            SvgPicture.asset(
              'images/icon_material.svg',
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                '${myListProduct[widget.index].material}% Cotton',
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(106, 106, 106, 1.0)),
              ),
            ),
          ],
        ));
  }

  Widget _nameHeader(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(20, 10, 23, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                myListProduct[widget.index].name,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
              ),
              Text(
                myListProduct[widget.index].title,
                overflow: TextOverflow.fade,
                maxLines: 2,
                softWrap: false,
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(106, 106, 106, 1.0)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '€${myListProduct[widget.index].price.toString()}',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
              ),
              Text(
                'VAT included',
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(106, 106, 106, 1.0)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bannerProduct(BuildContext context) {
    return Column(children: [
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: new Hero(
              tag: 'itemlv${widget.index}' +
                  '${myListProduct[widget.index].name}',
              child: Image.asset(
                myListProduct[widget.index].image_product_detail,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Positioned(
              top: 25,
              right: 22,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color.fromRGBO(0, 0, 0, 0.151212)),
                  child: SvgPicture.asset('images/icon_close.svg'),
                ),
              )),
          Positioned(
            left: MediaQuery.of(context).size.width / 2.5,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(left: 27, top: 10),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6))),
              alignment: Alignment.center,
              child: Text(
                '1/8',
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 22,
            child: DottedBorder(
              strokeWidth: 1,
              color: Color.fromRGBO(255, 255, 255, 1),
              dashPattern: [9, 5, 14, 5],
              child: SvgPicture.asset('images/like_icon.svg'),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 62,
            child: DottedBorder(
              strokeWidth: 1,
              color: Color.fromRGBO(255, 255, 255, 1),
              dashPattern: [9, 5, 14, 5],
              child: SvgPicture.asset('images/icon_share.svg'),
            ),
          ),
          Positioned(
              right: 25,
              bottom: -20,
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
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('images/shop_btn_icon.svg'),
                ),
              ))
        ],
      ),
    ]);
  }

  Widget _myItemListViewProduct(BuildContext context, int index, ProductModel myProduct) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.38,
              height: MediaQuery.of(context).size.height * 0.24,
              margin: EdgeInsets.fromLTRB(17, 0, 18, 0),
              child: Card(
                elevation: 20,
                clipBehavior: Clip.antiAlias,
                shadowColor: Color.fromRGBO(188, 188, 188, 0.7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  myProduct.image_item_list,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 0, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myProduct.name,
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                  ),
                  Text(
                    myProduct.type,
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
            dashPattern: [7, 5],
            child: SvgPicture.asset('images/like_icon.svg'),
          ),
        )
      ],
    );
  }
}
