import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/My_provider.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Provider.of<Myprovider>(context).text),
      ),
    );
  }
}
