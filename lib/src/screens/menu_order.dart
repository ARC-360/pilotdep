// import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
// import 'package:arc360menu/src/curd/moor_curd.dart';
// import 'package:arc360menu/src/curd/order/order_curd.dart';
// import 'package:arc360menu/src/curd/temporder/temporder_curd.dart';
// import 'package:arc360menu/src/screens/menu_item.dart';
// import 'package:arc360menu/src/serives/SharedClass.dart';
//
// import 'package:flutter/material.dart';
//
// bool widgetVisible = true;
// //int _qty = 0;
//
// class OrderTab extends StatefulWidget {
//   TemporderDao temporderDao;
//   DishsDao dishsDao;
//   OrderDao orderDao;
//   var db = AppDatabase();
//   OrderTab() {
//     temporderDao = TemporderDao(db);
//     dishsDao = DishsDao(db);
//     orderDao = OrderDao(db);
//   }
//   @override
//   _OrderTabState createState() => _OrderTabState();
// }
//
// class _OrderTabState extends State<OrderTab> {
//   getCatAndScat() {}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: widget.temporderDao.getAllDishWithQuantity(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               List<Temporder> temporterdata = snapshot.data;
//               if (temporterdata.isNotEmpty) {
//                 return Column(
//                   children: [
//                     Expanded(
//                       child: ListView(
//                         scrollDirection: Axis.vertical,
//                         children: [
//                           ...temporterdata.map((e) => MenuItem(
//                                 dish: Dish(
//                                     id: e.id,
//                                     dishName: e.dishName,
//                                     price1: e.price,
//                                     quantity: e.quantity),
//                               )),
//                         ],
//                       ),
//                     ),
//                     Container(
//                         child: Align(
//                       alignment: Alignment.bottomCenter,
//                       child: RaisedButton(
//                         onPressed: () async {
//                           List<Temporder> temOrders =
//                               await widget.temporderDao.getAllDishes();
//                           temOrders.forEach((e) async {
//                             var record =
//                                 await widget.orderDao.getAllDishById(e.id);
//                             if (record != null) {
//                               await widget.orderDao.updateOrder(Order(
//                                   id: e.id,
//                                   dishId: e.dishId,
//                                   dishName: e.dishName,
//                                   price: e.price));
//                             } else {
//                               await widget.orderDao.insertOrder(Order(
//                                   id: e.id,
//                                   dishId: e.dishId,
//                                   dishName: e.dishName,
//                                   price: e.price));
//                             }
//                           });
//                           await widget.temporderDao.deleteAllTemporder();
//                           setState(() {
//                             SharedClass.historyTabController.animateTo(1);
//                           });
//                         },
//                         padding: EdgeInsets.symmetric(
//                             vertical: 26.0, horizontal: 113),
//                         splashColor: Colors.redAccent[700],
//                         child: Text('PLACE ORDER',
//                             style: TextStyle(
//                               fontSize: 21,
//                               fontWeight: FontWeight.w700,
//                               fontFamily: 'Metropolis',
//                             )), //Bottom Order Now Button
//                         color: Colors.red[900],
//                         textColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(14),
//                               topLeft: Radius.circular(14)),
//                         ),
//                         elevation: 5,
//                       ),
//                     )),
//                   ],
//                 );
//               }
//               return Container();
//             }
//             return CircularProgressIndicator();
//           }),
//     );
//   }
// }

import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/curd/order/order_curd.dart';
import 'package:arc360menu/src/curd/temporder/temporder_curd.dart';
import 'package:arc360menu/src/screens/menu_item.dart';
import 'package:arc360menu/src/serives/SharedClass.dart';

import 'package:flutter/material.dart';

import 'menu_home.dart';

bool widgetVisible = true;
//int _qty = 0;

class OrderTab extends StatefulWidget {
  TemporderDao temporderDao;
  DishsDao dishsDao;
  OrderDao orderDao;
  var db = AppDatabase();
  OrderTab() {
    temporderDao = TemporderDao(db);
    dishsDao = DishsDao(db);
    orderDao = OrderDao(db);
  }
  @override
  _OrderTabState createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  callback() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: widget.temporderDao.getAllDishWithQuantity(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Temporder> temporterdata = snapshot.data;
              if (temporterdata.isEmpty){
               return Padding(
                 padding: const EdgeInsets.symmetric(vertical: 270.0, horizontal: 110),
                 child: Column(
                   children: [
                     Text('You have not added new dishes yet.\n\nSelect delicious dishes from the menu now!\n\n',
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
              if (temporterdata.isNotEmpty) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          ...temporterdata.map((e) => MenuItem(
                            callback: callback,
                            dish: Dish(
                                id: e.id,
                                dishName: e.dishName,
                                price1: e.price,
                                quantity: e.quantity),
                          )),
                        ],
                      ),
                    ),
                    Container(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: RaisedButton(
                            onPressed: () async {
                              List<Temporder> temOrders =
                              await widget.temporderDao.getAllDishes();
                              temOrders.forEach((e) async {
                                var record =
                                await widget.orderDao.getAllDishById(e.id);
                                if (record != null) {
                                  await widget.orderDao.updateOrder(Order(
                                      id: e.id,
                                      dishId: e.dishId,
                                      dishName: e.dishName,
                                      price: e.price));
                                } else {
                                  await widget.orderDao.insertOrder(Order(
                                      id: e.id,
                                      dishId: e.dishId,
                                      dishName: e.dishName,
                                      price: e.price));
                                }
                              });
                              await widget.temporderDao.deleteAllTemporder();
                              setState(() {
                                SharedClass.historyTabController.animateTo(1);
                              });
                            },
                            padding: EdgeInsets.symmetric(
                                vertical: 42.0, horizontal: 196),
                            splashColor: Colors.redAccent[700],
                            child: Text('CONFIRM ORDER',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Metropolis',
                                )), //Bottom Order Now Button
                            color: Colors.red[900],
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(14),
                                  topLeft: Radius.circular(14)),
                            ),
                            elevation: 5,
                          ),
                        )),
                  ],
                );
              }
              return Container();
            }
            return CircularProgressIndicator();
          }),
    );
  }
}