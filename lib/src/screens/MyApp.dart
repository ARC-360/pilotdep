import 'package:arc360menu/src/curd/image_curd/photos_curd.dart';
import 'package:arc360menu/src/curd/moor_curd.dart';
import 'package:arc360menu/src/models/image.dart';
import 'package:arc360menu/src/screens/menu_home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
 
// import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 411, height: 843, allowFontScaling: false);
    return MaterialApp(
      title: 'Carousel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ARC360 Menu App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  PhotosDao photosDao;
  var db = AppDatabase();
  MyHomePage({Key key, this.title}) {
    photosDao = PhotosDao(db);
  }
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Future getData() async {
  //   var url = 'https://menuapp-demo.000webhostapp.com/get.php';
  //   http.Response response = await http.get(url);
  //   //print(response.body);
  //   var data = jsonDecode(response.body);
  //   for (int i = 0; i < data.length; i++) {
  //     print(data[i]['image']);
  //     imgList.add(data[i]['image']);
  //   }
  // }

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    //getData();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,

        children: <Widget>[
          Scaffold(
              body: FutureBuilder(
                  future: widget.photosDao.getAllIPhotos(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      List<Photo> photos = snapshot.data;
                      return Stack(children: <Widget>[
                        Swiper(
                          itemCount: photos.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CachedNetworkImage(
                             
                              imageUrl:
                                   photos[index].image.toString(),
                              fit: BoxFit.cover,
                            );
                          },
                          loop: true,
                          autoplay: true,
                          autoplayDelay: 2000,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 100.0),
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_upward),
                                iconSize: 50,
                                color: Colors.redAccent,
                              )),
                        ),
                      ]);
                    }
                    return Center(child: CircularProgressIndicator());
                  })),
          MenuHome(),
          //   MenuBody(),
        ]);
  }
}
