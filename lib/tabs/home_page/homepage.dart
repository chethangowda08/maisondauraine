import 'package:assignment1/tabs/model/model_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../listing_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ModelClass.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: ModelClass.items[index]);
        });
  }
}
