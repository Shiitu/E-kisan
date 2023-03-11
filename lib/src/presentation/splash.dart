import 'package:ekissan/src/presentation/language.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => language()));
  }

  @override
  Widget build(BuildContext context) {
    double height_variable = MediaQuery.of(context).size.height;
    double width_varible = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromRGBO(26, 237, 92, 0.612),
        body: SafeArea(
          child: Center(
              child: Column(
            children: [
              Container(
                height: height_variable * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "E-KISAN",
                      style: TextStyle(
                        fontSize: height_variable * 0.05,
                        fontWeight: FontWeight.bold,
                        // fontWeight: FontWeight.bold
                      ),
                    )
                    // Image.asset(
                    //   "assets/images/logo.png",
                    //   width: width_varible * 0.55,
                    //   height: height_variable * 0.55,
                    // ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: height_variable * 0.08,
              // ),
              // Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image.asset(
              //           "assets/images/edfoallogo.png",
              //           width: width_varible * 0.1,
              //           height: width_varible * 0.1,
              //         ),
              //         SizedBox(
              //           width: width_varible * 0.05,
              //         ),
              //         Container(
              //           child: Column(
              //             children: [
              //               Text(
              //                 "Technical Partners",
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: height_variable * 0.012,
              //                     fontStyle: FontStyle.italic),
              //               ),
              //               Text(
              //                 "EdFoal",
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: height_variable * 0.015,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // )
            ],
          )),
        ));
  }
}
