// import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
// import 'package:arc360menu/src/curd/moor_curd.dart';
// import 'package:arc360menu/src/curd/temporder/temporder_curd.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// const double VEG_LOGO_SIZE = 15;
// const double MENU_ITEM_CIRCULAR_RADIUS = 17;
// const double MENU_ITEM_HEIGHT = 100;
// const double DIST_ASSET_ITEM_DESC = 10;
//
// class MenuItem extends StatefulWidget {
//   Dish dish;
//   DishsDao dishsDao;
//   TemporderDao temporderDao;
//   var db = AppDatabase();
//   MenuItem({this.dish}) {
//     temporderDao = TemporderDao(db);
//     dishsDao = DishsDao(db);
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//     return MenuItemState();
//   }
// }
//
// class MenuItemState extends State<MenuItem>
//     with SingleTickerProviderStateMixin {
//
//   @override
//   void initState() {
//
//
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
//         height: 100,
//         child: Material(
//           color: Colors.white,
//           elevation: 2.0,
//           borderRadius: BorderRadius.circular(13.0),
//           child: Stack(
//             children: <Widget>[
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     ClipRRect(
//                       borderRadius: new BorderRadius.only(
//                         topLeft: Radius.circular(13.0),
//                         bottomLeft: Radius.circular(13.0),
//                       ),
//                       child: Image(
//                         height: 100,
//                         width: 90,
//                         image: AssetImage('assets/imgs/image1.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
//                           child: ConstrainedBox(
//                             constraints: BoxConstraints(
//                               maxHeight: 100,
//                               maxWidth: 270,
//                             ),
//                             child: Text(
//                               widget.dish.dishName,
//                               style: new TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.grey[850],
//                                 fontWeight: FontWeight.w600,
//                                 fontFamily: 'Metropolis',
//                               ),
//                             ),
//                           ),
//                         ),
//                         // Double(widget.price),
//
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0, bottom: 15.0),
//                           child: Text(
//                             'INR ' + 'rs ' + widget.dish.price1.toString(),
//                             style: new TextStyle(
//                               fontSize: 18,
//                               color: Colors.grey[850],
//                               fontWeight: FontWeight.w600,
//                               fontFamily: 'Metropolis',
//                             ),
//                           ),
//                         ),
//                       ], // change for nothing
//                     ),
//                   ]),
//               Positioned(
//                 right: 10.0,
//                 bottom: 10.0,
//                 child: StreamBuilder(
//                     stream: widget.temporderDao
//                         .getAllIsubTemporderById(widget.dish.id),
//                     builder: (context, snapshot) {
//                       List<Temporder> increaseQuantityData = snapshot.data;
//                       if (snapshot.connectionState == ConnectionState.active) {
//                         if (increaseQuantityData.isNotEmpty) {
//                           return Stack(
//                             children: <Widget>[
//                               Visibility(
//                                 visible: increaseQuantityData[0].quantity <= 0,
//                                 child: FlatButton(
//                                   padding: EdgeInsets.symmetric(
//                                       vertical: 12.0, horizontal: 12.0),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                     side: BorderSide(color: Colors.grey[500]),
//                                   ),
//                                   //splashColor: Colors.red[900],
//
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text("Add",
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 13,
//                                             fontFamily: 'Metropolis',
//                                           )),
//                                       Icon(
//                                         Icons.add,
//                                         color: Colors.red[900],
//                                         size: 16.0,
//                                       ),
//                                     ],
//                                   ),
//                                   onPressed: () async {
//                                     await widget.temporderDao
//                                         .updateTemporder(Temporder(
//                                       id: widget.dish.id,
//                                       dishName: widget.dish.dishName,
//                                       price: widget.dish.price1,
//                                       quantity: 1,
//                                     ));
//                                   },
//                                 ),
//                               ),
//                               Visibility(
//                                   visible: increaseQuantityData[0].quantity > 0,
//                                   child: Container(
//                                     height: 45,
//                                     width: 130,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(
//                                         width: 1,
//                                         color: Colors.grey[500],
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: <Widget>[
//                                         IconButton(
//                                           onPressed: () {
//                                             if (increaseQuantityData[0]
//                                                     .quantity ==
//                                                 1) {
//                                               widget.temporderDao
//                                                   .deleteTemporder(
//                                                       increaseQuantityData[
//                                                           0]);
//                                             } else {
//                                               widget.temporderDao.updateTemporder(
//                                                   increaseQuantityData[0].copyWith(
//                                                       quantity:
//                                                           increaseQuantityData[
//                                                                       0]
//                                                                   .quantity -
//                                                               1));
//                                             }
//                                           },
//                                           icon: Icon(
//                                             Icons.remove,
//                                           ),
//                                         ),
//                                         Text(
//                                           increaseQuantityData[0]
//                                               .quantity
//                                               .toString(),
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                         IconButton(
//                                           onPressed: () {
//                                             widget.temporderDao.updateTemporder(
//                                                 increaseQuantityData[0].copyWith(
//                                                     quantity:
//                                                         increaseQuantityData[
//                                                                     0]
//                                                                 .quantity +
//                                                             1));
//                                           },
//                                           icon: Icon(
//                                             Icons.add,
//                                             color: Colors.red[900],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   )),
//                             ],
//                           );
//                         }
//                         return AnimatedOpacity(
//                           duration: Duration(milliseconds: 400),
//                           opacity: 1,
//                           child: Visibility(
//                             visible: true,
//                             child: FlatButton(
//                               padding: EdgeInsets.symmetric(
//                                   vertical: 12.0, horizontal: 12.0),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 side: BorderSide(color: Colors.grey[500]),
//                               ),
//                               //splashColor: Colors.red[900],
//
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: <Widget>[
//                                   Text("Add",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 13,
//                                         fontFamily: 'Metropolis',
//                                       )),
//                                   Icon(
//                                     Icons.add,
//                                     color: Colors.red[900],
//                                     size: 16.0,
//                                   ),
//                                 ],
//                               ),
//                               onPressed: () async {
//                                 await widget.temporderDao.insertTemporder(
//                                     Temporder(
//                                         id: widget.dish.id,
//                                         dishName: widget.dish.dishName,
//                                         price: widget.dish.price1,
//                                         quantity: 1,
//                                         dishId: widget.dish.id));
//                               },
//                             ),
//                           ),
//                         );
//                       }
//
//                       return Container();
//                     }),
//               )
//             ],
//           ),
//           //Here
//         ));
//   }
// }

import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/curd/temporder/temporder_curd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double VEG_LOGO_SIZE = 15;
const double MENU_ITEM_CIRCULAR_RADIUS = 17;
const double MENU_ITEM_HEIGHT = 100;
const double DIST_ASSET_ITEM_DESC = 10;

class MenuItem extends StatefulWidget {
  Function callback;
  Dish dish;
  DishsDao dishsDao;
  TemporderDao temporderDao;
  var db = AppDatabase();
  MenuItem({this.dish, this.callback}) {
    temporderDao = TemporderDao(db);
    dishsDao = DishsDao(db);
  }

  @override
  State<StatefulWidget> createState() {
    return MenuItemState();
  }
}

class MenuItemState extends State<MenuItem>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
        height: 100,
        child: Material(
          color: Colors.white,
          elevation: 2.0,
          borderRadius: BorderRadius.circular(13.0),
          child: Stack(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(13.0),
                        bottomLeft: Radius.circular(13.0),
                      ),
                      child: Image(
                        height: 100,
                        width: 90,
                        image: AssetImage('assets/imgs/image1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: 100,
                              maxWidth: 270,
                            ),
                            child: Text(
                              widget.dish.dishName,
                              style: new TextStyle(
                                fontSize: 18,
                                color: Colors.grey[850],
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Metropolis',
                              ),
                            ),
                          ),
                        ),
                        // Double(widget.price),

                        Padding(
                          padding: EdgeInsets.only(left: 10.0, bottom: 15.0),
                          child: Text(
                            'INR ' + widget.dish.price1.toString(),
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
              Positioned(
                right: 10.0,
                bottom: 10.0,
                child: StreamBuilder(
                    stream: widget.temporderDao
                        .getAllIsubTemporderById(widget.dish.id),
                    builder: (context, snapshot) {
                      List<Temporder> increaseQuantityData = snapshot.data;
                      if (snapshot.connectionState == ConnectionState.active) {
                        if (increaseQuantityData.isNotEmpty) {
                          return Stack(
                            children: <Widget>[
                              Visibility(
                                visible: increaseQuantityData[0].quantity <= 0,
                                child: FlatButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 12.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(color: Colors.grey[500]),
                                  ),
                                  //splashColor: Colors.red[900],

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Add",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                            fontFamily: 'Metropolis',
                                          )),
                                      Icon(
                                        Icons.add,
                                        color: Colors.red[900],
                                        size: 16.0,
                                      ),
                                    ],
                                  ),
                                  onPressed: () async {
                                    await widget.temporderDao
                                        .updateTemporder(Temporder(
                                      id: widget.dish.id,
                                      dishName: widget.dish.dishName,
                                      price: widget.dish.price1,
                                      quantity: 1,
                                    ));
                                  },
                                ),
                              ),
                              Visibility(
                                  visible: increaseQuantityData[0].quantity > 0,
                                  child: Container(
                                    height: 45,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        IconButton(
                                          onPressed: () {
                                            if (increaseQuantityData[0]
                                                .quantity ==
                                                1) {
                                              widget.temporderDao
                                                  .deleteTemporder(
                                                  increaseQuantityData[0]);
                                              widget.callback();
                                            } else {
                                              widget.temporderDao.updateTemporder(
                                                  increaseQuantityData[0].copyWith(
                                                      quantity:
                                                      increaseQuantityData[
                                                      0]
                                                          .quantity -
                                                          1));
                                            }
                                          },
                                          icon: Icon(
                                            Icons.remove,
                                          ),
                                        ),
                                        Text(
                                          increaseQuantityData[0]
                                              .quantity
                                              .toString(),
                                          style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            color: Colors.grey[850],
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Metropolis',
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            widget.temporderDao.updateTemporder(
                                                increaseQuantityData[0].copyWith(
                                                    quantity:
                                                    increaseQuantityData[0]
                                                        .quantity +
                                                        1));
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.red[900],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          );
                        }
                        return AnimatedOpacity(
                          duration: Duration(milliseconds: 400),
                          opacity: 1,
                          child: Visibility(
                            visible: true,
                            child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: Colors.grey[500]),
                              ),
                              //splashColor: Colors.red[900],

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text("Add",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        fontFamily: 'Metropolis',
                                      )),
                                  Icon(
                                    Icons.add,
                                    color: Colors.red[900],
                                    size: 16.0,
                                  ),
                                ],
                              ),
                              onPressed: () async {
                                await widget.temporderDao.insertTemporder(
                                    Temporder(
                                        id: widget.dish.id,
                                        dishName: widget.dish.dishName,
                                        price: widget.dish.price1,
                                        quantity: 1,
                                        dishId: widget.dish.id));
                              },
                            ),
                          ),
                        );
                      }

                      return Container();
                    }),
              )
            ],
          ),
          //Here
        ));
  }
}