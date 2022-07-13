import 'package:flutter/material.dart';

import 'model/model_class.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 1,
        child: ListTile(
          leading: Image.network(
            item.image,
            height: 90,
            width: 90,
          ),
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(item.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18))),
          ),
          subtitle: Center(
              child: Text(item.desc,
                  style: TextStyle(
                      color: Colors.indigo.shade500,
                      fontWeight: FontWeight.bold,
                      fontSize: 15))),
        ),
      ),
    );
  }
}
