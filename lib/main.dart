import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  // değişiklik yapılacağıgından dolayı statefulwidget kullanılmalı.
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double gen =
      100.0; // double türünde olmasının sebebi width ve hight özelliklerinin double olmasıdır.
  double yuk = 100.0;
  String yaz = "Büyük";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.redAccent,
              width: gen,
              height: yuk,
            ),
            RaisedButton(
                child: Text(yaz),
                onPressed: () {
                  if (yaz == "Büyük") {
                    setState(() {
                      gen = 200;
                      yuk = 200;
                      yaz = "Küçük";
                    });
                  } else {
                    setState(() {
                      gen = 100;
                      yuk = 100;
                      yaz = "Büyük";
                    });
                  }
                }),
            AnimatedContainer(
              color: Colors.redAccent,
              width: gen,
              height: yuk,
              duration: Duration(seconds: 2),
              curve: Curves.easeInBack,
            ),
            RaisedButton(
                child: Text(yaz),
                onPressed: () {
                  if (yaz == "Büyük") {
                    setState(() {
                      gen = 200;
                      yuk = 200;
                      yaz = "Küçük";
                    });
                  } else {
                    setState(() {
                      gen = 100;
                      yuk = 100;
                      yaz = "Büyük";
                    });
                  }
                })
          ],
        ),
      ),
    );
  }
}
