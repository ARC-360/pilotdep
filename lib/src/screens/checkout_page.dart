 
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/screens/qr_code.dart';
import 'package:arc360menu/src/screens/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:imagebutton/imagebutton.dart';

 

const CHECKOUT_HEADER_TEXT = 'Checkout';
const PAYMENT_METHOD_TEXT = 'Select Payment Method';
const double PAYMENT_METHOD_TEXT_SIZE = 38;
const double HEADER_FONT_SIZE = 30;
const double PAYMENT_METHOD_IMAGE_HEIGHT = 50;
const RECEIPT_BODY_COLOR = Colors.white;
const GRAND_TOTAL_TEXT = "Grand Total";
const double GRAND_TOTAL_FONT_SIZE = 25;
const double DIVIDER_THICKNESS = 2;
const RUPEE_SYMBOL = "₹";
const double RECEIPT_CONTAINER_PADDING_LEFT = 30;
const double RECEIPT_CONTAINER_PADDING_RIGHT = RECEIPT_CONTAINER_PADDING_LEFT;
const double RECEIPT_CONTAINER_PADDING_TOP = 20;
const double RECEIPT_CONTAINER_PADDING_BOTTOM = RECEIPT_CONTAINER_PADDING_TOP;
const String ITEM_TOTAL_STRING = 'Item Total';
const String TAXES_STRING = 'Taxes';
const String PROMO_CODE_LABEL = "Promo Code Applied : ";
const Color PROMO_CODE_FONT_COLOR = Colors.red;
const double INTER_CONTAINER_GAP = 20;
const double HEADER_HEIGHT = 120;
const double PAY_HEIGHT = 65;
const double PAY_WIDTH = 118;


final logoPaths = [
   
  'assets/imgs/image1.jpg',
   
];

class CheckoutWidget extends StatelessWidget {
  final double itemTotal, taxes;
  final String promoCode;
  final List<Order> orders;

  CheckoutWidget(this.itemTotal, this.taxes, this.promoCode, this.orders);

  @override
  Widget build(BuildContext context) {
    var receiptBodyWidth = MediaQuery.of(context).size.width * 0.8;
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.92,
          child: Scaffold(
              appBar: AppBar(
                title: Padding(
                    padding: EdgeInsets.only(left: 150.0),
                    child: Text(
                      CHECKOUT_HEADER_TEXT,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: HEADER_FONT_SIZE,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Metropolis',
                      ),
                      textAlign: TextAlign.center,
                    )),
                backgroundColor: HEADER_COLOR,
                toolbarHeight: HEADER_HEIGHT,
              ),
              // backgroundColor: Color(0xFFECEFF1), // bluegrey[50]
              // backgroundColor: Color(0xFF673AB7),
              backgroundColor: Color(0xFFF5F5F5),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(INTER_CONTAINER_GAP + 40),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                                width: receiptBodyWidth,
                                child: Material(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: RECEIPT_BODY_COLOR,
                                  elevation: 2,
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          RECEIPT_CONTAINER_PADDING_LEFT,
                                          RECEIPT_CONTAINER_PADDING_TOP,
                                          RECEIPT_CONTAINER_PADDING_RIGHT,
                                          RECEIPT_CONTAINER_PADDING_BOTTOM),
                                      child: Column(
                                          children: this
                                              .orders

                                              .map((order) => Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(order.dishName+
                                                          " x" +
                                                          order.id .toString()),
                                                      Text(
                                                        RUPEE_SYMBOL +
                                                            order.price.toString(),
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontFamily: 'Metropolis',
                                                        ),
                                                      )
                                                    ],
                                                  ))
                                              .toList())),
                                )), //
                            SizedBox(height: INTER_CONTAINER_GAP), // for orders
                            Container(
                              width: receiptBodyWidth,
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: RECEIPT_BODY_COLOR,
                                elevation: 2,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      RECEIPT_CONTAINER_PADDING_LEFT,
                                      RECEIPT_CONTAINER_PADDING_TOP,
                                      RECEIPT_CONTAINER_PADDING_RIGHT,
                                      RECEIPT_CONTAINER_PADDING_BOTTOM),
                                  child: Center(
                                      child: RichText(
                                    text: TextSpan(
                                        text: PROMO_CODE_LABEL,
                                        style: TextStyle(color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: this.promoCode,
                                              style: TextStyle(
                                                color: PROMO_CODE_FONT_COLOR,
                                                fontFamily: 'Metropolis',
                                              ))
                                        ]),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(height: INTER_CONTAINER_GAP),
                            Container(
                              width: receiptBodyWidth,
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: RECEIPT_BODY_COLOR,
                                elevation: 2,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      RECEIPT_CONTAINER_PADDING_LEFT,
                                      RECEIPT_CONTAINER_PADDING_TOP,
                                      RECEIPT_CONTAINER_PADDING_RIGHT,
                                      RECEIPT_CONTAINER_PADDING_BOTTOM),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(ITEM_TOTAL_STRING),
                                          Text(
                                            RUPEE_SYMBOL + this.itemTotal.toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Metropolis',
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(TAXES_STRING),
                                          Text(
                                            RUPEE_SYMBOL + this.taxes.toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Metropolis',
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: INTER_CONTAINER_GAP),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
                Divider(
                  thickness: DIVIDER_THICKNESS,
                  height: 15,
                  color: Colors.grey[800],
                  indent: 100.0,
                  endIndent: 100.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70, top: 30),
                  child: Container(
                    width: receiptBodyWidth,
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      color: RECEIPT_BODY_COLOR,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            RECEIPT_CONTAINER_PADDING_LEFT,
                            RECEIPT_CONTAINER_PADDING_TOP,
                            RECEIPT_CONTAINER_PADDING_RIGHT,
                            RECEIPT_CONTAINER_PADDING_BOTTOM),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              GRAND_TOTAL_TEXT,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: GRAND_TOTAL_FONT_SIZE,
                                fontFamily: 'Metropolis',
                              ),
                            ),
                            Text(
                              RUPEE_SYMBOL + (this.itemTotal + this.taxes).toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: GRAND_TOTAL_FONT_SIZE,
                                fontFamily: 'Metropolis',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 120, left: 30, right: 30),
                  //child: PaymentMethodWidget(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        PAYMENT_METHOD_TEXT,
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: PAYMENT_METHOD_TEXT_SIZE,fontFamily: 'Metropolis',),
                      ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: PAY_HEIGHT,
                            width: PAY_WIDTH,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.grey[500],
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/bhimupi.jpg'),
                                )
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(3.0),
                              onPressed: (){

                              },
                            ),
                          ),
                          Container(
                            height: PAY_HEIGHT,
                            width: PAY_WIDTH,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.grey[500],
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/phonepe.jpg'),
                                )
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(3.0),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QrCodeWidget())
                                );
                              },
                            ),
                          ),
                          Container(
                            height: PAY_HEIGHT,
                            width: PAY_WIDTH,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.grey[500],
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/gpay.jpg'),
                                )
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(3.0),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QrCodeWidget())
                                );

                              },
                            ),
                          ),
                          Container(
                            height: PAY_HEIGHT,
                            width: PAY_WIDTH,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.grey[500],
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/paytm.jpg'),
                                )
                            ),
                            child: FlatButton(
                              padding: EdgeInsets.all(3.0),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QrCodeWidget())
                                );

                              },
                            ),
                          ),
                        ],
                      ),
                    ],

                  ),

                ),

              ])),
        ),
        Expanded(

          child: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.wine_bar_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                  label: Text(
                    'Water',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      //color: Colors.grey[850],
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                  minWidth: 150.0,
                  height: 45.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side:
                    BorderSide(color: Colors.white, width: 1.5),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.room_service_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                  label: Text(
                    'Call',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      //color: Colors.grey[850],
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                  minWidth: 150.0,
                  height: 45.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side:
                    BorderSide(color: Colors.white, width: 1.5),
                  ),
                ),
                // FlatButton.icon(
                //   onPressed: () {
                //     // Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => CheckoutWidget(
                //     //             500, 100, "promocode", orderdata)));
                //   },
                //   icon: Icon(
                //     Icons.receipt_long_rounded,
                //     color: Colors.white,
                //     size: 28,
                //   ),
                //   label: Text(
                //     'Bill',
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 20,
                //     ),
                //   ),
                //   minWidth: 150.0,
                //   height: 45.0,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(30),
                //     side:
                //     BorderSide(color: Colors.white, width: 1.5),
                //   ),
                // )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PaymentMethodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var paymentMethodImageHWidth = MediaQuery.of(context).size.width / 6;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          PAYMENT_METHOD_TEXT,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: PAYMENT_METHOD_TEXT_SIZE,
            fontFamily: 'Metropolis',
          ),
        ),
        SizedBox(height: 60),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: logoPaths
                .map(
                  (path) => ImageButton(
                    height: PAYMENT_METHOD_IMAGE_HEIGHT,
                    width: paymentMethodImageHWidth,
                    pressedImage: Image.asset(path),
                    unpressedImage: Image.asset(path),
                    children: [],
                  ),
                )
                .toList())
      ],
    );
  }
}
