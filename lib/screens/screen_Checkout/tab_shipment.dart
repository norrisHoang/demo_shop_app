import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabShipment extends StatefulWidget {
  @override
  TabShipmentState createState() => TabShipmentState();
}

class TabShipmentState extends State<TabShipment> {
  int _checkAddress = 1;
  int _tickShipment = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      _titleDeliveryAddress(context),
      _checkAddressDefault(context),
      _checkNewAddress(context),
      _cartFreeShipment(context),
      _cartPremiumShipment(context)
    ]))));
  }

  Widget _cartPremiumShipment(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _tickShipment = 2;
        });
      },
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 15, left: 23, right: 25),
              padding: EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 248, 248, 1.0),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: _tickShipment == 2 ? Color.fromRGBO(255, 183, 1, 1.0) : Color.fromRGBO(228, 228, 228, 1.0), width: 1)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: SvgPicture.asset("images/icon_truck_premium.svg"),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Get premium shipment',
                                    maxLines: 2,
                                    style: TextStyle(
                                        height: 2,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    'Deliver time 24h',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                '€ 120',
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color.fromRGBO(47, 105, 248, 1.0)),
                              ),
                            )
                          ],
                        )),
                  )
                ],
              )),
          Positioned(
            top: 0,
            right: 25,
            child: Visibility(
              visible: _tickShipment == 2 ? true : false,
              child: Stack(
                children: [
                  Container(
                      height: 20,
                      width: 20,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(5)),
                          color: Color.fromRGBO(255, 183, 1, 1.0))),
                  Positioned(
                      top: 6,
                      right: 4,
                      child: SvgPicture.asset('images/icon_tick.svg'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _cartFreeShipment(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _tickShipment = 1;
        });
      },
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 15, left: 23, right: 25),
              padding: EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 248, 248, 1.0),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: _tickShipment == 1 ? Color.fromRGBO(255, 183, 1, 1.0) : Color.fromRGBO(228, 228, 228, 1.0), width: 1)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: SvgPicture.asset("images/icon_truck_free.svg"),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Free shipment',
                                    maxLines: 2,
                                    style: TextStyle(
                                        height: 2,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    'Free shipment over 100€ Deliver time 2-3 days',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                '€ 0',
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color.fromRGBO(47, 105, 248, 1.0)),
                              ),
                            )
                          ],
                        )),
                  )
                ],
              )),
          Positioned(
            top: 0,
            right: 25,
            child: Visibility(
              visible: _tickShipment == 1 ? true : false,
              child: Stack(
                children: [
                  Container(
                      height: 20,
                      width: 20,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(5)),
                          color: Color.fromRGBO(255, 183, 1, 1.0))),
                  Positioned(
                      top: 6,
                      right: 4,
                      child: SvgPicture.asset('images/icon_tick.svg'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _checkNewAddress(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 35, left: 25, right: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Address',
                    maxLines: 1,
                    style: TextStyle(
                        height: 2.0, fontWeight: FontWeight.w400, fontSize: 12),
                  )
                ],
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _checkAddress = 2;
                  });
                },
                child: Container(
                    height: 35,
                    width: 35,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: _checkAddress == 2 ? Color.fromRGBO(255, 183, 1, 1.0) : Color.fromRGBO(228, 228, 228, 1.0), width: 2)),
                    child: Visibility(
                      visible: _checkAddress == 2 ? true : false,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 234, 182, 1.0),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
              ),
            )
          ],
        ));
  }

  Widget _checkAddressDefault(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(233, 233, 233, 1.0), width: 1))),
        margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Số 17 ngõ 2',
                    maxLines: 1,
                    style: TextStyle(
                        height: 2.0, fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    'Đình Thôn',
                    maxLines: 1,
                    style: TextStyle(
                        height: 2.0, fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    'Mỹ Đình 1',
                    maxLines: 1,
                    style: TextStyle(
                        height: 2.0, fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    'Nam Từ Liêm',
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    'Hà Nội',
                    maxLines: 1,
                    style: TextStyle(
                        height: 2.0, fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Text(
                    'Việt Nam',
                    maxLines: 1,
                    style: TextStyle(
                        height: 2.0, fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _checkAddress = 1;

                  });
                },
                child: Container(
                    height: 35,
                    width: 35,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: _checkAddress == 1 ? Color.fromRGBO(255, 183, 1, 1.0) : Color.fromRGBO(228, 228, 228, 1.0), width: 2)),
                    child: Visibility(
                      visible: _checkAddress == 1 ? true : false,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 234, 182, 1.0),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )),
              ),
            )
          ],
        ));
  }

  Widget _titleDeliveryAddress(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 30, 25, 25),
      padding: EdgeInsets.only(bottom: 15),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromRGBO(233, 233, 233, 1.0), width: 1))),
      child: Text(
        'Delivery address',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
      ),
    );
  }
}
