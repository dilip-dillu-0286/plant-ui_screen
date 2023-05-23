import 'package:flutter/material.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   height: 40,
                      // ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 80),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                color: Colors.green.withOpacity(0.29),
                                blurRadius: 22,
                              ),
                              BoxShadow(
                                  offset: Offset(-15, -15),
                                  blurRadius: 15,
                                  color: Colors.green.withOpacity(0.22))
                            ]),
                        child: Icon(
                          Icons.light_mode,
                          color: Colors.green,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                color: Colors.green.withOpacity(0.29),
                                blurRadius: 22,
                              ),
                              BoxShadow(
                                  offset: Offset(-15, -15),
                                  blurRadius: 15,
                                  color: Colors.green.withOpacity(0.22))
                            ]),
                        child: Icon(
                          Icons.light_mode,
                          color: Colors.green,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                color: Colors.green.withOpacity(0.29),
                                blurRadius: 22,
                              ),
                              BoxShadow(
                                  offset: Offset(-15, -15),
                                  blurRadius: 15,
                                  color: Colors.green.withOpacity(0.22))
                            ]),
                        child: Icon(
                          Icons.light_mode,
                          color: Colors.green,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                color: Colors.green.withOpacity(0.29),
                                blurRadius: 22,
                              ),
                              BoxShadow(
                                  offset: Offset(-15, -15),
                                  blurRadius: 15,
                                  color: Colors.green.withOpacity(0.22))
                            ]),
                        child: Icon(
                          Icons.light_mode,
                          color: Colors.green,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 585,
                    width: 412,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(62),
                            bottomLeft: Radius.circular(62)),
                        image: DecorationImage(
                            image: AssetImage("images/img.png")),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 22,
                            color: Colors.green.withOpacity(0.29),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Angelica\n",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    TextSpan(
                        text: "Russia", style: TextStyle(color: Colors.green))
                  ])),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "\$440",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(15))),
                    minimumSize: Size(250, 60), //////// HERE
                  ),
                  onPressed: () {},
                  child: Text('Buy Now'),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shadowColor: Colors.greenAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(15))),
                      minimumSize: Size(250, 60), //////// HERE
                    ),
                    onPressed: () {},
                    child: Text(
                      'Descrption',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
