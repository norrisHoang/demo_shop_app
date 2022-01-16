import 'package:demo_shop_app/screens/screen_Checkout/tab_payment.dart';
import 'package:demo_shop_app/screens/screen_Checkout/tab_summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'tab_shipment.dart';

class CheckoutPage extends StatefulWidget {
  @override
  CheckoutPageState createState() => CheckoutPageState();
}

class CheckoutPageState extends State<CheckoutPage>
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
      _headerCheckout(context),
      _buildTabBar(context),
    ]))));
  }

  Widget _buildTabBar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, right: 25),
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
              color: Color.fromRGBO(255, 183, 1, 1.0),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: const [
              // First tab
              Tab(
                text: 'Shipment',
              ),
              // Second tab
              Tab(
                text: 'Payment',
              ),
              // Third tab
              Tab(
                text: 'Summar',
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            controller: _tabController,
            children: [
              TabShipment(),
              TabPayment(),
              TabSummary(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _headerCheckout(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 30, 25, 25),
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromRGBO(233, 233, 233, 1.0), width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Checkout',
                style: TextStyle(
                    letterSpacing: 0.5,
                    wordSpacing: 2,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Flexible(
              child: Container(
                  child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color.fromRGBO(0, 0, 0, 0.151212)),
              child: SvgPicture.asset('images/icon_close.svg'),
            ),
          )))
        ],
      ),
    );
  }
}
