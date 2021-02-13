import 'package:arc360menu/src/cache/in_memory_cache.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/models/cat_ans_scat.dart';
import 'package:arc360menu/src/serives/SharedClass.dart';
import 'package:arc360menu/src/values/app_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feedback.dart';

class MenuNavigation extends StatefulWidget {
  CatAndScat catAndScat;
  MenuNavigation({this.catAndScat});
  @override
  _MenuNavigationState createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
    int selected = 0;
  createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
   

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Container(
                //color: Colors.red[900],
                child: Center(
                    child: Text("Enter Promo Code",
                        style: TextStyle(
                          color: Colors.grey[850],
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Metropolis',
                        )))),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('Submit', style:  TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Metropolis',
                ),),
                onPressed: () {},
              )
            ],
          );
        });
  }

 

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 843, width: 411);
   

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 6), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              //margin: EdgeInsets.all(ScreenUtil().setWidth(15)),
              padding: EdgeInsets.only(left: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setWidth(23),
                        bottom: ScreenUtil().setWidth(1)),
                    //padding: EdgeInsets.only(top: ScreenUtil().setWidth(45), bottom: ScreenUtil().setWidth(5)),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        fontSize:
                            ScreenUtil().setSp(30, allowFontScalingSelf: true),
                        color: Colors.grey[850],
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Metropolis',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setWidth(7),
                        bottom: ScreenUtil().setWidth(
                            1)), //Space between Menu title and promo code
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.all(Radius.circular(10)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.3),
                      //     spreadRadius: 5,
                      //     blurRadius: 7,
                      //     offset: Offset(0, 6), // changes position of shadow
                      //   ),
                      // ],
                    ),
                    child: FlatButton(
                      onPressed: () {
                        createAlertDialog(context);
                      },

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey[500]),
                      ),
                      // child: const Text('Bottom Button!', style: TextStyle(fontSize: 20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Promo code',
                        style: TextStyle(
                          color: Colors.grey[850],
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Metropolis',
                        ),
                        ),
                      ),
                      color: Colors.white,
                      textColor: Colors.black,
                      //elevation: 5,
                    ),

//                     child: TextField(
// //                          controller: _numberController,
//                       textAlign: TextAlign.left,
//                       textAlignVertical: TextAlignVertical.center,
//                       keyboardType: TextInputType.number,
//                       style: TextStyle(
// //                      fontFamily: AppFonts.PRIMARY_FONT,
// //                      fontStyle: FontStyle.italic,
// //                      color: AppColors.primaryTextDark,
//                         fontSize: ScreenUtil()
//                             .setSp(16, allowFontScalingSelf: true),
//                       ),
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         focusColor: Colors.white,
//                         contentPadding: EdgeInsets.only(
//                             left: ScreenUtil().setWidth(10)),
//                         hintText: 'PROMO Code',
//                         hintStyle: TextStyle(
//                           fontStyle: FontStyle.italic,
// //                          fontFamily: AppFonts.PRIMARY_FONT
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Colors.white, width: 5.0),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Colors.white, width: 5.0),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              //padding: EdgeInsets.only(left: 25.0),
              //width: 400,
              alignment: Alignment.center,
              child: ListView.builder(
                  key: Key('builder ${selected.toString()}'),
                itemCount: widget.catAndScat.menu.length,
                itemBuilder: ( context,index){
                  return Theme(
                      data: Theme.of(context).copyWith(
                        accentColor: Colors.white,
                      ),
                      child: ExpansionTile(
                          backgroundColor: Colors.red[900],
                          initiallyExpanded:index == selected,
                          trailing: SizedBox.shrink(),
                          title: Text(
                            widget.catAndScat.menu[index].catName,
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(
                                9.5,
                                allowFontScalingSelf: true,


                              ),
                              //color: (selected!=true)?Colors.black:Colors.white,
                              //color: Colors.grey[850],
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Metropolis',
                            ),
                          ),

                           onExpansionChanged: ((newState) {
                          if (newState)
                            setState(() {
                              selected = index;
                              SharedClass.tabController.animateTo(index);
                            });
                          else
                            setState(() {
                              selected = -1;
                            });
                        }),
                          // children: _createSubItems(1),
                          children: [
                            ..._createSubItems(widget.catAndScat.menu[index]).map((item) => Container(
                                  margin: EdgeInsets.all(
                                      ScreenUtil().setWidth(8)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: ScreenUtil().setWidth(15),
                                      ),
                                      Text(' ' +
                                        item.sCatName,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(9.5,
                                              allowFontScalingSelf: true),
                                          // color: Colors.grey[850],
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Metropolis',
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ]
                          // onExpansionChanged: (value){
                          //   setState(() {
                          //     isExpand=value;
                          //   });
                          //},
                          ),
                    );
                },
               ),
            )
            
          ),
          // Container(
          //   color: Colors.black,
          //   width: MediaQuery.of(context).size.width,
          //   height: ScreenUtil().setWidth(40),
          //   //margin: EdgeInsets.all(ScreenUtil().setWidth(14)),
          //   child: RaisedButton(
          //     onPressed: () {
          //       // InMemoryCache().set('abcd', 45);
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => Scaffold(body: FeedbackWidget()))
          //           // CheckoutWidget(500, 100, "promocode",
          //           //     Order("1", [Item("goan curry", 123, 2)]))),
          //           // Currently only one sample item passed, later make a function and pass that
          //           );
          //     },
          //     child: Text(
          //       'Check Out',
          //       style: TextStyle(
          //           fontSize:
          //               ScreenUtil().setSp(16, allowFontScalingSelf: true)),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  List<SubCategory> _createSubItems(Menu i) {
    List<SubCategory> sub_cat =
        widget.catAndScat.subcat.where((e) => e.catId == i.id).toList();
    return sub_cat;
  }
}
