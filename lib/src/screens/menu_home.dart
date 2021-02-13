import 'package:arc360menu/src/cache/data_model.dart';
import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
import 'package:arc360menu/src/curd/menu_cued/menu_curd.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/curd/sub_category/sub_category_curd.dart';
import 'package:arc360menu/src/curd/temporder/temporder_curd.dart';
import 'package:arc360menu/src/models/cat_ans_scat.dart';
import 'package:arc360menu/src/screens/menu_body_tab.dart';
import 'package:arc360menu/src/screens/menu_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'feedback.dart';

class MenuHome extends StatefulWidget {
  MenuDao menuDao;
  DishsDao dishsDao;
  SubCategoryDao subCategoryDao;
   
  var db = AppDatabase();
  MenuHome() {
    menuDao = MenuDao(db);
    dishsDao = DishsDao(db);
    subCategoryDao = SubCategoryDao(db);
    
  }
  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  Future getCatAndScat() async {
    CatAndScat catAndScat = CatAndScat();
    catAndScat.menu = await widget.menuDao.getAllIMenu();
    catAndScat.subcat = await widget.subCategoryDao.getAllIsubCategory();
    catAndScat.dishes = await widget.dishsDao.getAllDish();
    return catAndScat;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 843, width: 411);

    return Scaffold(
      body: FutureBuilder(
        future: getCatAndScat(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container();
          } else if (snapshot.hasError) {
            return Container();
          } else if (snapshot == null || snapshot.data == null) {
            return Container();
          } else if (snapshot.data != null) {
            CatAndScat catAndScat = snapshot.data;
            return Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.92,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: MenuNavigation(
                              catAndScat: catAndScat,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: MenuBodyTab(catAndScat: catAndScat),
                          )
                        ],
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
                ));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
