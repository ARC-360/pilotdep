import 'package:arc360menu/src/constants.dart';
import 'package:arc360menu/src/curd/dish_curd/dish_curd.dart';
import 'package:arc360menu/src/curd/image_curd/photos_curd.dart';
import 'package:arc360menu/src/curd/menu_cued/menu_curd.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/curd/order/order_curd.dart';
import 'package:arc360menu/src/curd/sub_category/sub_category_curd.dart';
import 'package:arc360menu/src/curd/temporder/temporder_curd.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';

import 'package:image_downloader/image_downloader.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

fectchDataFromfirebase() async {
  final Connectivity _connectivity = Connectivity();
  ConnectivityResult result;
  try {
    result = await _connectivity.checkConnectivity();
  } on PlatformException catch (e) {
    print(e.toString());
  }
  if (result != ConnectivityResult.none) {
    MenuDao menuDao;
    TemporderDao temporderDao;
    DishsDao dishsDao;
    OrderDao orderDao;
    PhotosDao photosDao;
    SubCategoryDao subCategoryDao;
    var db = AppDatabase();

    menuDao = MenuDao(db);
    orderDao = OrderDao(db);

    temporderDao = TemporderDao(db);
    dishsDao = DishsDao(db);
    photosDao = PhotosDao(db);
    subCategoryDao = SubCategoryDao(db);

    QuerySnapshot menuList =
        await firebaseFirestore.collection(MENU_COLLECTIONS).get();
    QuerySnapshot dishesList =
        await firebaseFirestore.collection(DISHES_COLLECTIONS).get();
    QuerySnapshot images =
        await firebaseFirestore.collection(IMAGE_COLLECTIONS).get();
    QuerySnapshot subCategory =
        await firebaseFirestore.collection(SUB_CATEGORY_COLLECTIONS).get();
    await menuDao.deleteAllMenu();
    await orderDao.deleteAllOrder();
    await dishsDao.deleteAllDish();
    await photosDao.deleteAllPhotos();
    await subCategoryDao.deleteAllScat();
    await temporderDao.deleteAllTemporder();
    List<String> imagesURL = [];
    images.docs.forEach((doc) {
      print(doc.data());
      photosDao.insertPhoto(Photo.fromJson(doc.data()));
    });

    print(imagesURL.toString());

    menuList.docs.forEach((doc) {
      menuDao.insertMenu(Menu.fromJson(doc.data()));
    });
    dishesList.docs.forEach((doc) {
      dishsDao.insertDish(Dish.fromJson(doc.data()));
    });
    subCategory.docs.forEach((doc) {
      subCategoryDao.insertsubCategory(SubCategory.fromJson(doc.data()));
    });
    return null;
  } else {
    return null;
  }
}
