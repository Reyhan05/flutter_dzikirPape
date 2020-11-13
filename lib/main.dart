import 'package:flutter/material.dart';

import 'dzikirpagi.dart';
import 'dzikirsore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var tekswaktudoa = TextStyle(
      fontFamily: 'arial',
      color: Colors.white,
      fontSize: 23.0,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Dzikir",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            Text(
              "Pagi dan Petang",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, TampilanPagi());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://fahmipedia.com/wp-content/uploads/2019/12/Pagi-Hari-1.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Dzikir Pagi",
                        style: tekswaktudoa,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, TampilanPetang());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://1.bp.blogspot.com/-nFeAHbjAoDM/XotWVTkCucI/AAAAAAAAQak/8SZK2XQk5eYKlmC-iMSgCvEjaOJkJzYRwCLcBGAsYHQ/s640/filosofi-senja.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Dzikir Petang",
                        style: tekswaktudoa,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.luminosity),
            image: NetworkImage(imageUrl)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
