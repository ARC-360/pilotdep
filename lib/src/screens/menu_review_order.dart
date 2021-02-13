// TODO Implement this library.

// import 'dart:html';

import 'package:arc360menu/src/serives/SharedClass.dart';
import 'package:flutter/material.dart';
import 'feedback.dart';
import 'menu_history.dart';
import 'menu_home.dart';
import 'menu_order.dart';

class MenuReviewOrder extends StatefulWidget {
  @override
  _MenuReviewOrderState createState() => _MenuReviewOrderState();
}

class _MenuReviewOrderState extends State<MenuReviewOrder> with SingleTickerProviderStateMixin{
  
 TabController controllerTab;

  @override
  void initState() {
    controllerTab =
    TabController(length: 2, vsync: this);
    SharedClass.historyTabController = controllerTab;
   // controllerTab.addListener(_handleTabSelection);
  }
  
   
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 150,
            backgroundColor: Colors.grey[200],
            elevation: 0,
            bottom: TabBar(
              controller: controllerTab,
              labelColor: Colors.red[900],
              unselectedLabelColor: Colors.grey[850],
              indicatorColor: Colors.red[900],
              tabs: [
                Tab(
                  child: Text(
                    'Order',
                    style: TextStyle(fontSize: 15,
                      color: Colors.grey[850],
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    'History',
                    style: TextStyle(fontSize: 15,
                      color: Colors.grey[850],
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                ),
                // Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton.icon(
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
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      //size: 30,
                    ),
                    label: Text('Go to main menu',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[850],
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                    ),
                    )
                  ),
                  Center(
                    child: Text(
                      ' Review Order ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey[850],
                        //color: Colors.grey[850],
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Metropolis',
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed:() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => Scaffold(body: FeedbackWidget())));
                      },


                      child: Row(
                        children: [
                          Text('Call for your bill  ',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[850],
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Metropolis',
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,

                          ),
                        ],
                      ),

                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: controllerTab,
            children: [
              OrderTab(),
               History(),
               
            ],
          ),
        ),
      ),
    );
  }
}
