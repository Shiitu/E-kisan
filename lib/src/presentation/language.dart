import 'package:ekissan/src/presentation/phone.dart';
import 'package:flutter/material.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  @override
  Widget build(BuildContext context) {
    double height_variable = MediaQuery.of(context).size.height;
    double width_varible = MediaQuery.of(context).size.width;
    double box1_height = height_variable * 0.55;
    double box2_height = height_variable * 0.45;
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            height: height_variable * 0.55,
            width: width_varible * 1,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, height_variable * 0.08, 0, 0),
                  child: Image.asset(
                    "assets/images/lang.png",
                    width: width_varible * 0.55,
                    height: height_variable * 0.55,
                  ),
                  height: box1_height * 0.75,
                  // color: Colors.red,
                ),
                SizedBox(
                  height: box1_height * 0.02,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "   Select Your ",
                        style: TextStyle(
                            fontSize: height_variable * 0.030,
                            fontFamily: 'Inter',
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.fromLTRB(
                //       width_varible * 0.04, 0, width_varible * 0.45, 0),
                //   child: Column(
                //     children: [
                //       Divider(
                //         thickness: height_variable * 0.002,
                //         color: Colors.white,
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  child: Row(children: [
                    Text(
                      " Language :",
                      style: TextStyle(
                          fontSize: height_variable * 0.05,
                          fontFamily: 'Roboto-regular',
                          fontWeight: FontWeight.bold,
                          // fontWeight: ,
                          color: Colors.white),
                    )
                  ]),
                )
              ],
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(49, 160, 95, 1),
              // image: DecorationImage(
              //     image: AssetImage('assets/images/lang.png'),
              //     fit: BoxFit.cover)
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width_varible * 0.05,
                height_variable * 0.05, width_varible * 0.05, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "Please Choose Your language : ",
                //   style: TextStyle(fontSize: height_variable * 0.018),
                // ),
                SizedBox(
                  height: box2_height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {
                    // onLocaleChange(const Locale("hi"));

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => phone()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: width_varible * 0.4,
                        vertical: height_variable * 0.02),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0)),
                    primary: Color.fromARGB(210, 175, 243, 170),
                  ),
                  child: Center(
                    child: Text(
                      "हिंदी",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height_variable * 0.025),
                    ),
                  ),
                ),
                SizedBox(
                  height: box2_height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {
                    // onLocaleChange(const Locale("en"));

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => phone()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: width_varible * 0.2,
                          vertical: height_variable * 0.02),
                      shape: RoundedRectangleBorder(
                          //     side:
                          //         // BorderSide(width: 1.0, color: Color(0xff25265f)),
                          borderRadius: BorderRadius.circular(100.0)),
                      primary: Color.fromARGB(210, 175, 243, 170)),
                  child: Center(
                    child: Text(
                      "English",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height_variable * 0.025),
                    ),
                  ),
                ),
                SizedBox(
                  height: box2_height * 0.05,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
