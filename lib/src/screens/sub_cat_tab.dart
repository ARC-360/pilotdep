import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/models/cat_ans_scat.dart';
import 'package:arc360menu/src/screens/menu_item.dart';
import 'package:arc360menu/src/serives/SharedClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCatTab extends StatefulWidget {
  Menu menu;
  final lenght;
  List<Dish> dishList;

  var db = AppDatabase();

  CatAndScat catAndScat;
  SubCatTab({this.menu, this.catAndScat, this.lenght, this.dishList}) {}

  @override
  _SubCatTabState createState() => _SubCatTabState();
}

class _SubCatTabState extends State<SubCatTab> with TickerProviderStateMixin {
  TabController innerControllerTab;
  int _currentIndex = 0;
  @override
  void initState() {
    innerControllerTab =
        TabController(length: _createSubItems(widget.menu).length, vsync: this);
    SharedClass.innerTabController = innerControllerTab;
    innerControllerTab.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    setState(() {
      _currentIndex = innerControllerTab.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.lenght >= 2
        ? Column(children: [
            DefaultTabController(
              length: widget.lenght,
              child: Container(
                decoration: BoxDecoration(),
                child: TabBar(
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[850],
                      fontFamily: 'Metropolis', //Selected top menu page
                      fontSize: 18,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[650],
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                    ),
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.grey[850],
                    unselectedLabelColor: Colors.grey[600],
                    controller: innerControllerTab,
                    tabs: <Tab>[
                      ..._createSubItems(widget.menu)
                          .map((item) => Tab(child: Text(item.sCatName))),
                    ]),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: innerControllerTab,
                children: [
                  ..._createSubItems(widget.menu).map((item) => Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            bottom: ScreenUtil()
                                .setWidth(1), //right menu bottom spacing
                            top: ScreenUtil()
                                .setWidth(8)), //right menu top spacing
                        decoration: BoxDecoration(
                          color: Colors.grey[200], //right menu background area
                          //borderRadius: BorderRadius.all(Radius.circular(10.0)),  //right menu background area
                        ),
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView(
                            children: [
                              // ...widget.dishList
                              //     .where((e) =>
                              //         e.catId == item.id &&
                              //         e.sCatId == item.catId)
                              //     .map(
                              //       (e) => MenuItem(
                              //         dish: e,
                              //       ),
                              //     ),
                              ...widget.dishList
                                  .where((e) =>
                              e.catId == item.catId &&
                                  e.sCatId == item.id)
                                  .map(
                                    (e) => MenuItem(
                                  dish: e,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                  //   ListView(
                  //   children: constructList(_menuItem, _dataModel),
                  // ),
                  // ListView(
                  //   children: constructList(_menuItem, _dataModel),
                  // ),
                ],
              ),
            )
          ])
        : Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
                bottom: ScreenUtil().setWidth(1), //right menu bottom spacing
                top: ScreenUtil().setWidth(8)), //right menu top spacing
            decoration: BoxDecoration(
              color: Colors.grey[200], //right menu background area
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),  //right menu background area
            ),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: [
                  ...widget.dishList.where((e) => e.catId == widget.menu.id).map(
                        (e) => MenuItem(
                      dish: e,
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  List<SubCategory> _createSubItems(Menu i) {
    List<SubCategory> sub_cat =
        widget.catAndScat.subcat.where((e) => e.catId == i.id).toList();
    return sub_cat;
  }
}
