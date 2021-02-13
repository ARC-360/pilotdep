import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/screens/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arc360menu/src/curd/order/order_curd.dart';
import 'package:arc360menu/src/screens/menu_history.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/curd/order/order_curd.dart';


import 'checkout_page.dart';
import 'menu_home.dart';

const double INTER_BUTTON_WIDTH = 30;
const double ROUNDED_CORNER_RADIUS = 10;
const double FORM_ELEMENT_HEIGHT = 30;
const double HEADER_FONT_SIZE = 22;
const FEEDBACK_HEADER_TEXT =
    '''Tell us how your experience was\nwhile we process your order''';
enum Rating { good, average, very_good }

const Color INTERNAL_BOX_COLOR = Color(0xFFf9f9f9);
const Color OUTER_COLOR = Color(0xFFededed);
const double INTER_LABEL_WIDTH = 20;

class FeedbackWidget extends StatefulWidget {
  OrderDao orderDao;
  var db = AppDatabase();
  FeedbackWidget() {
    orderDao = OrderDao(db);
  }
  @override
  _FeedbackWidgetState createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
  List<Order> orderdata;
  @override
  Widget build(BuildContext context) {
    double inputBoxWidth = MediaQuery.of(context).size.width * 0.5;
    return Container(
      child: StreamBuilder(
        stream: widget.orderDao.getAllIOrder(),
        builder: (context, snapshot) {
        if (snapshot.hasData) {
        orderdata = snapshot.data;
        }
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.92,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RedHeader(
                          child: Row(

                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Scaffold(body: MenuHome())));
                                  },
                                  icon: Icon(Icons.arrow_back, size: 30,),
                                  color: Colors.white,

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:37.0),
                                child: Text(
                        FEEDBACK_HEADER_TEXT,
                        style: TextStyle(
                                  color: Colors.white,
                                  fontSize: HEADER_FONT_SIZE,
                                  //fontWeight: FontWeight.bold,
                          //color: Colors.grey[850],
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Metropolis',

                        ),
                        textAlign: TextAlign.center,
                      ),
                              ),
                            ],
                          )),
                      Container(
                        height: 868,
                        color: OUTER_COLOR,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(30),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(ROUNDED_CORNER_RADIUS)),
                                  color: INTERNAL_BOX_COLOR,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text("First Name   ",
                                            style: TextStyle(//fontWeight: FontWeight.bold,
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Metropolis',)
                                        ),
                                        Center(child: InputTextBox(width: inputBoxWidth)),
                                      ]),
                                      SizedBox(
                                        height: INTER_LABEL_WIDTH,
                                      ),
                                      Row(children: [
                                        Text("Last Name   ",
                                            style: TextStyle(//fontWeight: FontWeight.bold
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Metropolis',
                                            )),
                                        InputTextBox(width: inputBoxWidth)
                                      ]),
                                      SizedBox(
                                        height: INTER_LABEL_WIDTH,
                                      ),
                                      Row(children: [
                                        Text("Phone No.    ",
                                            style: TextStyle(//fontWeight: FontWeight.bold,
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Metropolis',
                                            )),
                                        InputTextBox(width: inputBoxWidth),
                                      ]),
                                      SizedBox(
                                        height: INTER_LABEL_WIDTH,
                                      ),
                                      Text(
                                        "Additional Feedback",
                                        style: TextStyle(//fontWeight: FontWeight.bold,
                                          color: Colors.grey[850],
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Metropolis',
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      InputTextBox(maxlines: 4),
                                      SizedBox(height: INTER_LABEL_WIDTH),
                                      Text("How would you rate our food",
                                          style: TextStyle(//fontWeight: FontWeight.bold
                                            color: Colors.grey[850],
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Metropolis',
                                          )),
                                      FeedbackRating(),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CheckoutWidget(
                                                  500, 100, "promocode", orderdata)));
                                    },
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        side: BorderSide(color: Colors.black)),
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(//fontWeight: FontWeight.bold
                                        color: Colors.grey[850],
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Metropolis',

                                      ),
                                    ),
                                  ),
                                  SizedBox(width: INTER_BUTTON_WIDTH),
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => CheckoutWidget(
                                                      500, 100, "promocode", orderdata)));
                                    },
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                        side: BorderSide(color: Colors.black)),
                                    child: Text(
                                      "Skip",
                                      style: TextStyle(//fontWeight: FontWeight.bold,
                                        color: Colors.grey[850],
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Metropolis',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
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
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckoutWidget(
                                      500, 100, "promocode", orderdata)));
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
          );
        }
      ),
    );
  }
}

class InputTextBox extends StatelessWidget {
  final double width;
  final int maxlines;

  InputTextBox({this.width, this.maxlines = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            border: OutlineInputBorder(),
            filled: true,
            focusColor: Colors.white,
            fillColor: Colors.white,
            hoverColor: Colors.white,
          ),
          keyboardType: this.maxlines > 1 ? TextInputType.multiline : null,
          maxLines: this.maxlines,
        ));
  }
}

// radio Buttons
class FeedbackRating extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FeedbackRatingState();
  }
}

class FeedbackRatingState extends State<FeedbackRating> {
  Rating feedbackRating = Rating.very_good;

  @override
  Widget build(BuildContext context) {
    Function setFeedbackRating = (rating) => setState(() {
          feedbackRating = rating;
        });
    return Column(
      children: [
        RadioListTile(
          value: Rating.good,
          groupValue: feedbackRating,
          onChanged: setFeedbackRating,
          title: Text("Good"),
        ),
        RadioListTile(
          value: Rating.very_good,
          groupValue: feedbackRating,
          onChanged: setFeedbackRating,
          title: Text("Very Good"),
        ),
        RadioListTile(
          value: Rating.average,
          groupValue: feedbackRating,
          onChanged: setFeedbackRating,
          title: Text("Average"),
        ),
      ],
      mainAxisSize: MainAxisSize.min,
    );
  }
}
