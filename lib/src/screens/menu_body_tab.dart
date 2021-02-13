import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/models/cat_ans_scat.dart';
import 'package:arc360menu/src/screens/sub_cat_tab.dart';
import 'package:arc360menu/src/serives/SharedClass.dart';
import 'package:flutter/material.dart';
import 'menu_review.dart';

class MenuBodyTab extends StatefulWidget {
  CatAndScat catAndScat;
  DishsDao dishsDao;

  var db = AppDatabase();

  MenuBodyTab({this.catAndScat}) {
    dishsDao = DishsDao(db);
  }

  @override
  _MenuBodyTabState createState() => _MenuBodyTabState();
}

class _MenuBodyTabState extends State<MenuBodyTab>
    with TickerProviderStateMixin {
  TabController controllerTab;

  @override
  void initState() {
    controllerTab =
        TabController(length: widget.catAndScat.menu.length, vsync: this);
    SharedClass.tabController = controllerTab;
    controllerTab.addListener(_handleTabSelection);
  }

  int _currentIndex = 0;

  _handleTabSelection() {
    setState(() {
      _currentIndex = controllerTab.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: EdgeInsets.only(top: ScreenUtil().setWidth(3)),
        padding: EdgeInsets.only(top: 43.0),
        decoration:
            BoxDecoration(color: Colors.grey[200]), //Right Menu top space bar
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.grey[200],
                ),
                isScrollable: true,
                controller: controllerTab,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily:
                      'Metropolis', //Selected top menu page                  // fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true),
                  fontSize: 55,
                ),
                unselectedLabelStyle: TextStyle(
                  //fontWeight: FontWeight.normal,
                  // fontSize: ScreenUtil().setSp(13, allowFontScalingSelf: true),
                  fontSize: 5,
                  //color: Colors.grey[850],
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Metropolis',
                ),
                tabs: [
                  ...widget.catAndScat.menu.map((e) {
                    return Tab(
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          e.catName,
                          textAlign: TextAlign.center,
                          style: TextStyle(//color: Colors.grey[850],
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Metropolis',
                          fontSize: 25,

                          ),
                        ),
                      ),
                    );
                  }),
                ],
                labelColor: Colors.grey[850],
                unselectedLabelColor: Colors.grey[500],

              ),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(controller: controllerTab, children: <Widget>[
                ...widget.catAndScat.menu.map((e) => SubCatTab(
                      catAndScat: widget.catAndScat,
                      menu: e,
                      lenght: _createSubItems(e).length,
                      dishList: widget.catAndScat.dishes,
                    ))
              ]),
            ),
            Container(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () async {
                  //   List<Dish> dishes =
                  //       await widget.dishsDao.getAllDishWithQuantity();
                  //  dishes.forEach((e)async {
                  //     await widget.temporderDao.insertTemporder(Temporder(dishName: e.dishName,price: e.price1,quantity: e.quantity,dishId: e.id));
                  //   });

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuReview(
                        catAndScat: widget.catAndScat,
                      ),
                    ),
                  );
                },
                padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 105),
                splashColor: Colors.redAccent[700],
                child: Text('PLACE ORDER',
                    style: TextStyle(
                      fontSize: 23,
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
        ));
  }

  List<SubCategory> _createSubItems(Menu i) {
    List<SubCategory> sub_cat =
        widget.catAndScat.subcat.where((e) => e.catId == i.id).toList();
    return sub_cat;
  }
}
