import 'package:flutter/material.dart';
import 'package:plantscreenui/body.dart';

class homescrren extends StatefulWidget {
  const homescrren({super.key});

  @override
  State<homescrren> createState() => _homescrrenState();
}

class _homescrrenState extends State<homescrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildappbar(),
      body: body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
        height: 50,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 50,
              offset: Offset(0, 10),
              color: Colors.green.withOpacity(0.35)),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag,
                ))
          ],
        ),
      ),
    );
  }

  AppBar buildappbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green.shade600,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      actions: [],
    );
  }
}
