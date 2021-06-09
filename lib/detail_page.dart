import 'dart:ui';

import 'package:coffee_shop_app_ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  static var screenHeight;
  static var screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "images/coffee1.jpeg",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 10.0,
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                width: double.infinity,
                                height: screenHeight * 0.2 - 20,
                                decoration: BoxDecoration(
                                  color: Color(0xff311d18).withOpacity(0.6),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Cappuccino",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    "With Oat Milk",
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                      color: Color(0xffaeaeae),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(
                                                      0xffd17842,
                                                    ),
                                                  ),
                                                  Text(
                                                    "\t4.5\t",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 40.0,
                                                    width: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff141921),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10.0,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset(
                                                          'images/coffeeicon.svg',
                                                          height: 20,
                                                          color:
                                                              Color(0xffd17842),
                                                        ),
                                                        Text(
                                                          "Coffee",
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            color: Color(
                                                                0xffaeaeae),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40.0,
                                                    width: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff141921),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10.0,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset(
                                                          'images/milkicon.svg',
                                                          height: 20,
                                                          color:
                                                              Color(0xffd17842),
                                                        ),
                                                        Text(
                                                          "Milk",
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            color: Color(
                                                                0xffaeaeae),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              MaterialButton(
                                                minWidth: 120,
                                                onPressed: () {},
                                                color: Color(0xff101419),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    10.0,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Medicum Roasted",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xffaeaeae),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                size: 20,
                                color: Color(0xffaeaeae),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage()));
                              },
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0xff141921),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                size: 20,
                                color: Color(0xffaeaeae),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffaeaeae),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "A cappuccino is a coffee -bassed drink made",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "primrily from espresso and milk",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "...Read more",
                                style: TextStyle(
                                  color: Color(0xffb25e2b),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "Size",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffaeaeae),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Color(0xffb25e2b),
                              ),
                            ),
                            child: Text(
                              "S",
                              style: TextStyle(
                                color: Color(0xffb86b3c),
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: Color(0xff141921),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "M",
                              style: TextStyle(
                                color: Color(0xffb86b3c),
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: Color(0xff141921),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "L",
                              style: TextStyle(
                                color: Color(0xffb86b3c),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                  color: Color(0xffaeaeae),
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$\t",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffd17842),
                                    ),
                                  ),
                                  Text(
                                    "4.20",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          MaterialButton(
                            onPressed: () {},
                            height: 55,
                            minWidth: 200,
                            color: Color(0xffd17842),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
