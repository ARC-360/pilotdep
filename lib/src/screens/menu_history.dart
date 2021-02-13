import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/curd/order/order_curd.dart';
import 'package:arc360menu/src/screens/checkout_page.dart';
import 'package:flutter/material.dart';

import 'feedback.dart';
import 'menu_home.dart';

bool widgetVisible = true;

// ignore: must_be_immutable
class History extends StatefulWidget {
  OrderDao orderDao;
  var db = AppDatabase();
  History() {
    orderDao = OrderDao(db);
  }
  @override
  _History createState() => _History();
}

class _History extends State<History> {
  List<Order> orderdata;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: StreamBuilder(
              stream: widget.orderDao.getAllIOrder(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  orderdata = snapshot.data;
                  if (orderdata.isEmpty){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 270.0, horizontal: 110),
                      child: Column(
                        children: [
                          Text('You have no previously ordered dishes yet.\n\nOrder dishes from menu now!\n\n',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Metropolis',
                            ),
                          ),
                          RaisedButton(
                              onPressed:() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MenuHome(
                                      //catAndScat: widget.catAndScat,
                                    ),
                                  ),
                                );
                              },
                              padding: EdgeInsets.symmetric(vertical: 35.0),
                              color: Colors.red[900],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 110.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.arrow_back, color: Colors.white,),
                                    Text(
                                      ' Go to menu',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Metropolis',
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    );
                  }
                  if (orderdata.isNotEmpty) {
                    return ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        ...orderdata.map(
                          (e) => Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 10.0),
                              height: 100,
                              child: Material(
                                color: Colors.white,
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(13.0),
                                child: Stack(
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius: new BorderRadius.only(
                                              topLeft: Radius.circular(13.0),
                                              bottomLeft: Radius.circular(13.0),
                                            ),
                                            child: Image(
                                              height: 100,
                                              width: 90,
                                              image: AssetImage(
                                                  'assets/imgs/image1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,

                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0,
                                                    bottom: 8.0,
                                                    left: 8.0,
                                                    right: 8.0),
                                                child: ConstrainedBox(
                                                  constraints: BoxConstraints(
                                                    maxHeight: 100,
                                                    maxWidth: 270,
                                                  ),
                                                  child: Text(
                                                    e.dishName,
                                                    style: new TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.grey[850],
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: 'Metropolis',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              // Double(widget.price),

                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10.0, bottom: 15.0),
                                                child: Text(
                                                  'INR ' +
                                                      e.price.toString(),
                                                  style: new TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.grey[850],
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Metropolis',
                                                  ),
                                                ),
                                              ),
                                            ], // change for nothing
                                          ),
                                        ]),
                                  ],
                                ),
                                //Here
                              )),
                        ),
                      ],
                    );
                  }
                  return Container();
                }
                return CircularProgressIndicator();
              }),
        ),
        Container(
            child: Align(
          alignment: Alignment.bottomCenter,
          // child: RaisedButton(
          //   onPressed: ()  {
          //
          //     Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //     builder: (context) => Scaffold(body: FeedbackWidget())));
          //   },
          //   padding: EdgeInsets.symmetric(vertical: 42.0, horizontal: 206),
          //   splashColor: Colors.redAccent[700],
          //   child: Text('Call for your bill',
          //       style: TextStyle(
          //         fontSize: 21,
          //         fontWeight: FontWeight.w700,
          //         fontFamily: 'Metropolis',
          //       )), //Bottom Order Now Button
          //   color: Colors.red[900],
          //   textColor: Colors.white,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //         topRight: Radius.circular(14), topLeft: Radius.circular(14)),
          //   ),
          //   elevation: 5,
          // ),
        )),
      ],
    );
  }
}
