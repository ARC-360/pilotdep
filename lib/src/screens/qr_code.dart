//import 'package:arc360menu/src/screens/menu_body.dart';
import 'package:arc360menu/src/screens/menu_home.dart';
import 'package:arc360menu/src/screens/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'lib/screens/menu_body.dart';

//import '../data_model.dart';
import 'checkout_page.dart';

class QrCodeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Payment',
                style: new TextStyle(
                  fontSize: 25,
                  color: Colors.grey[850],
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Metropolis',
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0, bottom: 10.0),
              child: Image(
                height: 350,
                width: 350,
                image: AssetImage('assets/imgs/qrcode.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                'Scan the code to pay\n\n',
                style: new TextStyle(
                  fontSize: 17,
                  color: Colors.grey[850],
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Metropolis',
                ),
              ),
            ),
            RaisedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuHome())
                  );
                },
              color: Colors.red[900],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
              ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 20.0),
                  child: Text(
                    'Done',
                    style: new TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
