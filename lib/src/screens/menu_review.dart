import 'package:arc360menu/src/models/cat_ans_scat.dart';
import 'package:flutter/material.dart';

import 'feedback.dart';
import 'menu_navigation.dart';
import 'menu_review_order_page.dart';

class MenuReview extends StatefulWidget {
  CatAndScat catAndScat;
  MenuReview({this.catAndScat});

  @override
  _MenuReviewState createState() => _MenuReviewState();
}

class _MenuReviewState extends State<MenuReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Expanded(
              //   flex: 1,
              //   child: MenuNavigation(catAndScat: widget.catAndScat),
              // ),
              Container(
                height: MediaQuery.of(context).size.height * 0.92,
                child: MenuReviewOrderPage(),
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
                        onPressed: () {

                        },
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
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Scaffold(body: FeedbackWidget())));
                        },
                        icon: Icon(
                          Icons.receipt_long_rounded,
                          color: Colors.white,
                          size: 28,
                        ),
                        label: Text(
                          'Bill',
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
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
