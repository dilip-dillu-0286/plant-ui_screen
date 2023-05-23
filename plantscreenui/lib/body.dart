import 'package:flutter/material.dart';
import 'package:plantscreenui/detailscreen.dart';
import 'headerportion.dart';

// import 'homescrren.dart';
class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          headerportion(size: size),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      "Recomended",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      height: 3,
                      width: 120,
                      color: Colors.green.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40, right: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)))),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text("More"),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                recomended(
                  image: "images/image_1.png",
                  title: "Ramya",
                  country: "india",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => detailscreen()));
                  },
                  price: 440,
                ),
                recomended(
                  image: "images/image_2.png",
                  title: "ravali",
                  country: "india",
                  press: () {},
                  price: 440,
                ),
                recomended(
                  image: "images/image_3.png",
                  title: "nithin",
                  country: "india",
                  press: () {},
                  price: 440,
                ),
                recomended(
                  image: "images/image_2.png",
                  title: "bharath",
                  country: "india",
                  press: () {},
                  price: 440,
                ),
                recomended(
                  image: "images/image_3.png",
                  title: "uppu",
                  country: "india",
                  press: () {},
                  price: 440,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      "Futured plants",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      height: 3,
                      width: 130,
                      color: Colors.green.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40, right: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)))),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text("More"),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                featuredcontainer(
                  image: "images/bottom_img_1.png",
                  press: () {},
                ),
                featuredcontainer(
                  image: "images/bottom_img_2.png",
                  press: () {},
                ),
                featuredcontainer(
                  image: "images/bottom_img_1.png",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class featuredcontainer extends StatelessWidget {
  final String image;
  final Function press;
  const featuredcontainer({
    required this.image,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
        width: 350,
        height: 185,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}

class recomended extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function press;
  const recomended(
      {required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                20,
              ),
              topRight: Radius.circular(20))),
      margin: EdgeInsets.only(left: 20, top: 10),
      width: size.width * 0.3,
      height: size.height * 0.4,
      // height: 120,
      // width: 120,
      // color: Colors.green,
      child: Column(
        children: [
          Image.asset(image, fit: BoxFit.contain),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => detailscreen()));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    // topLeft: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 50,
                        spreadRadius: 20,
                        offset: Offset(0, 10),
                        color: Colors.green.withOpacity(0.23))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "$title\n".toUpperCase()),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style:
                                TextStyle(color: Colors.green.withOpacity(0.5)))
                      ]),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "\$$price".toString(),
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
