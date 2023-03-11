import 'package:ekissan/src/presentation/contact.dart';
import 'package:ekissan/src/presentation/faq.dart';
import 'package:ekissan/src/presentation/market.dart';
import 'package:flutter/material.dart';

class SwipeCard extends StatefulWidget {
  const SwipeCard({super.key});

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  @override
  Widget build(BuildContext context) {
    double height_variable = MediaQuery.of(context).size.height;
    double width_varible = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: const Text(
                "E-KISSAN",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // GestureDetector(
            //     onTap: () {
            //       // SessionManager().cleanPrefernces();
            //       // auth.signOut();
            //       Navigator.pushReplacement(
            //           context,
            //           MaterialPageRoute(
            //               builder: (BuildContext context) => language()));
            //     },
            //     child: Icon(
            //       Icons.logout,
            //       color: Colors.white,
            //       size: 25,
            //     ))
          ],
        ),
        automaticallyImplyLeading: false,
        // titleSpacing: 00.0,
        centerTitle: true,
        // toolbarHeight: 60.2,
        // toolbarOpacity: 0.8,

        // elevation: 0.00,
        backgroundColor: Color.fromRGBO(49, 160, 95, 1),
        // actions: [
        //   Icon(
        //     Icons.more_vert,
        //     size: 35,
        //   ),
        // ],)
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(height_variable * 0.02),
              height: height_variable * 0.23,
              width: width_varible * 0.9,
              child: Column(
                children: [
                  SizedBox(
                    height: height_variable * 0.005,
                  ),
                  Text(
                    "Weather",
                    style: TextStyle(
                        fontSize: height_variable * 0.028,
                        color: Color.fromARGB(255, 115, 115, 120)),
                  ),
                  Text(
                    "27 C",
                    style: TextStyle(
                      fontSize: height_variable * 0.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    thickness: height_variable * 0.002,
                    color: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        height_variable * 0.03, 0, height_variable * 0.03, 0),
                    child: Row(
                      children: [
                        Text("Precipitation :",
                            style: TextStyle(
                                fontSize: height_variable * 0.018,
                                color: Color.fromARGB(255, 115, 115, 120))),
                        Text("0%",
                            style: TextStyle(
                                fontSize: height_variable * 0.018,
                                color: Color.fromARGB(255, 115, 115, 120))),
                        SizedBox(
                          width: width_varible * 0.2,
                        ),
                        Text("Wind :",
                            style: TextStyle(
                                fontSize: height_variable * 0.018,
                                color: Color.fromARGB(255, 115, 115, 120))),
                        Text("3km/hr",
                            style: TextStyle(
                                fontSize: height_variable * 0.018,
                                color: Color.fromARGB(255, 115, 115, 120))),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        height_variable * 0.03, 0, height_variable * 0.03, 0),
                    child: Row(
                      children: [
                        SizedBox(width: height_variable * 0.12),
                        Text("Humidity :",
                            style: TextStyle(
                                fontSize: height_variable * 0.018,
                                color: Color.fromARGB(255, 115, 115, 120))),
                        Text("46 %",
                            style: TextStyle(
                                fontSize: height_variable * 0.018,
                                color: Color.fromARGB(255, 115, 115, 120))),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(210, 175, 243, 170),
                //  borderRadius: BorderRadius.circular(10.0)
                // image: DecorationImage(
                //     image: AssetImage('assets/images/phone.png'),
                //     fit: BoxFit.cover)
              ),
            ),
          ),
          Container(
            height: height_variable * 0.23,
            // width: 200,
            // margin: EdgeInsets.all(height_variable * 0.02),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // mainAxisAlignment: MainAxisAlignment.center,
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      height_variable * 0.02, 0, height_variable * 0.02, 0),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(height_variable * 0.09,
                          height_variable * 0.02, height_variable * 0.09, 0),
                      height: height_variable * 0.3,
                      width: width_varible * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(210, 175, 243, 170)),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShoppingListView()));
                          },
                          style: ElevatedButton.styleFrom(
                              // side: BorderSide(width: height_variable * 0.002),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width_varible * 0.115,
                                  vertical: height_variable * 0.018),
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(10.0)),
                              primary: Color.fromARGB(210, 175, 243, 170)),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/market.png",
                                            width: width_varible * 0.25,
                                            height: width_varible * 0.25,
                                          ),
                                          Text(
                                            "Market",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: height_variable * 0.04,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Text(
                                    //   "Bc",
                                    //   style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontSize: height_variable * 0.03,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   child: Text("Phonetic Sound",
                              //       style: TextStyle(
                              //           color: Colors.black,
                              //           fontSize: height_variable * 0.015)),
                              // )
                            ],
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      height_variable * 0.02, 0, height_variable * 0.02, 0),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(height_variable * 0.09,
                          height_variable * 0.02, height_variable * 0.09, 0),
                      height: height_variable * 0.3,
                      width: width_varible * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(210, 175, 243, 170)),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SwipeCard()));
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width_varible * 0.115,
                                  vertical: height_variable * 0.018),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              primary: Color.fromARGB(210, 175, 243, 170)),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/tutor.png",
                                            width: width_varible * 0.25,
                                            height: width_varible * 0.25,
                                          ),
                                          Text(
                                            "Tutorial",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: height_variable * 0.03,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Text(
                                    //   "A",
                                    //   style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontSize: 40,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   "Bc",
                                    //   style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontSize: 24,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   child: Text("Phonetic Sound"),
                              // )
                            ],
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(height_variable * 0.09,
                          height_variable * 0.02, height_variable * 0.09, 0),
                      height: height_variable * 0.3,
                      width: width_varible * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(210, 175, 243, 170)),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContactUsScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              // side: BorderSide(width: 1.5),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width_varible * 0.08,
                                  vertical: height_variable * 0.018),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              primary: Color.fromARGB(210, 175, 243, 170)),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/contact.png",
                                            width: width_varible * 0.25,
                                            height: width_varible * 0.25,
                                          ),
                                          Text(
                                            "Contact Us",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: height_variable * 0.03,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Text(
                                    //   "A",
                                    //   style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontSize: 40,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   "Bc",
                                    //   style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontSize: 24,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   child: Text("Phonetic Sound",
                              //       style: TextStyle(color: Colors.black)),
                              // )
                            ],
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(height_variable * 0.09,
                          height_variable * 0.02, height_variable * 0.09, 0),
                      height: height_variable * 0.3,
                      width: width_varible * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(210, 175, 243, 170)),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FaqScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width_varible * 0.115,
                                  vertical: height_variable * 0.018),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              primary: Color.fromARGB(210, 175, 243, 170)),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/faq.jpg",
                                            width: width_varible * 0.25,
                                            height: width_varible * 0.25,
                                          ),
                                          Text(
                                            "FAQ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: height_variable * 0.03,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Text(
                                    //   "A",
                                    //   style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontSize: 40,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   "Bc",
                                    //   style: TextStyle(
                                    //     color: Colors.black,
                                    //     fontSize: 24,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   child: Text("Phonetic Sound"),
                              // )
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
