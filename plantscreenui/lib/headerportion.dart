import 'package:flutter/material.dart';

class headerportion extends StatelessWidget {
  const headerportion({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 20),
      height: size.height * 0.2,
      // color: Colors.blue,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 50, left: 20, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi Ramya!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 20,
                  child: ClipOval(
                      child: Image.asset(
                    'images/potti.png',
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                  )
                      // fit: BoxFit.cover,
                      // width: 80,
                      // height: 80,

                      ),
                ),

                // Container(
                //   child: Image.asset(
                //     'images/potti.png',
                //     height: 40,
                //     width: 30,
                //     fit: BoxFit.cover,
                //   ),
                //   padding: EdgeInsets.all(10), // Border width
                //   decoration: BoxDecoration(
                //       color: Colors.white, shape: BoxShape.circle),
                //   // child: ClipRRect(
                //   //   child: Image(image: AssetImage('images/potti.png')),
                //   //   borderRadius: BorderRadius.all(Radius.circular(100)),
                //   // ),
                // )
              ],
            ),
            height: size.height * 200,
            decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 25,
                        color: Colors.green,
                        offset: Offset(10, 12)),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "search",
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                      hintStyle: TextStyle(color: Colors.green),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
