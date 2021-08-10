//import 'dart:html';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/My_provider.dart';
import 'package:statemanagment/page2.dart';
import 'package:statemanagment/productwedget.dart';

void main() {
  runApp(ChangeNotifierProvider<Myprovider>(
      create: (context) => Myprovider(), child: MaterialApp(home: MyApp())));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('provider app'),
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.home)),
              Tab(child: Icon(Icons.favorite)),
              Tab(child: Icon(Icons.card_travel))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: ListView.builder(
                  itemCount: Provider.of<Myprovider>(context).products.length,
                  itemBuilder: (context, index) {
                    return Productwedget(
                        Provider.of<Myprovider>(context).products[index],
                        index);
                  }),
            ),
            Container(
              child: ListView.builder(
                  itemCount:
                      Provider.of<Myprovider>(context).productsFavorite.length,
                  itemBuilder: (context, index) {
                    return Productwedget(
                        Provider.of<Myprovider>(context)
                            .productsFavorite[index],
                        index);
                  }),
            ),
            Container(
              child: ListView.builder(
                  itemCount:
                      Provider.of<Myprovider>(context).productscart.length,
                  itemBuilder: (context, index) {
                    return Productwedget(
                        Provider.of<Myprovider>(context).productscart[index],
                        index);
                  }),
            )
          ],
        ),
      ),
    );
  }
}


 // appBar: AppBar(
        //   title: Text('STATE MANGMENT'),
        // ),
        // body: Column(
        //   children: [
        //     TextField(
        //       onChanged: (v) {
        //         return text = v;
        //       },
        //     ),
        //     Text(Provider.of<Myprovider>(context).text),
        //     ElevatedButton(
        //         onPressed: () {
        //           Provider.of<Myprovider>(context, listen: false)
        //               .changeTextValue('flutter wac');
        //         },
        //         child: Text('submit')),
        //     ElevatedButton(
        //         onPressed: () {
        //           Navigator.of(context)
        //               .push(MaterialPageRoute(builder: (context) => page2()));
        //         },
        //         child: Text('submit'))
        //   ],
        // ));
