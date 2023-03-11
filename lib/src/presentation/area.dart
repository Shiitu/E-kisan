import 'package:ekissan/src/presentation/dashboard.dart';
import 'package:flutter/material.dart';

class area extends StatefulWidget {
  const area({super.key});

  @override
  State<area> createState() => _areaState();
}

class _areaState extends State<area> {
  final phoneNumberEditingController = new TextEditingController();
  TextEditingController countryCode = TextEditingController();
  var phone = "";
  @override
  Widget build(BuildContext context) {
    final phoneNumberField = TextFormField(
        autofocus: false,
        controller: countryCode,
        keyboardType: TextInputType.number,
        validator: (value) {
          RegExp regex = new RegExp(r'/^(?:[+0]9)?[0-9]{6}$/');
          if (value!.isEmpty) {
            return ("Phone Number cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Phone number ");
          }
          return null;
        },
        onChanged: (value) {
          setState(() {
            phone = value;
          });
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.location_city),
          contentPadding: EdgeInsets.fromLTRB(25, 15, 20, 15),
          hintText: "Area Code",
        ));
    double height_variable = MediaQuery.of(context).size.height;
    double width_varible = MediaQuery.of(context).size.width;
    double box1_height = height_variable * 0.55;
    double box2_height = height_variable * 0.45;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height_variable * 0.55,
              width: width_varible * 1,
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.fromLTRB(0, height_variable * 0.08, 0, 0),
                    child: Image.asset(
                      "assets/images/location.png",
                      width: width_varible * 0.40,
                      height: height_variable * 0.400,
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
                          "   Enter Your ",
                          style: TextStyle(
                              fontSize: height_variable * 0.030,
                              fontFamily: 'Roboto-Bold',
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
                        " Area PinCode :",
                        style: TextStyle(
                            fontSize: height_variable * 0.05,
                            fontFamily: 'Roboto-regular',
                            // fontWeight: ,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ]),
                  )
                ],
              ),
              // child: Column(
              //   children: [
              //     Image.asset('assets/images/phone.png',
              //         width: width_varible * 0.5,
              //         height: height_variable * 0.5),
              //   ],
              // ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(49, 160, 95, 1),
                // image: DecorationImage(
                //   image: AssetImage(
                //     'assets/images/phone.png',
                //   ),
                //   // fit: BoxFit.cover
                // )
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(width_varible * 0.05,
                  height_variable * 0.05, width_varible * 0.05, 0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        phoneNumberField,
                        // TextField(
                        //   controller: countryCode,
                        //   keyboardType: TextInputType.number,
                        //   decoration: InputDecoration(
                        //     border: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(10),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height_variable * 0.04,
                  ),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            // CustomWidget().showProgress(context: context);
                            // print(phone);
                            // await FirebaseAuth.instance.verifyPhoneNumber(
                            //   phoneNumber: phone,
                            //   verificationCompleted:
                            //       (PhoneAuthCredential credential) async {
                            //     print('inside verification');

                            //     // adduser();
                            //     await auth.signInWithCredential(credential);
                            //     CustomWidget().hidProgress(context: context);
                            //   },
                            // verificationFailed: (FirebaseAuthException e) {
                            //   print('inside verification failedf');
                            //   CustomWidget().hidProgress(context: context);

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dashboard()));
                          },
                          // codeSent:
                          //     (String verificationId, int? resendToken) {
                          //   login.verify = verificationId;
                          //   print('login verification====${login.verify}');
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => otp()));
                          // },
                          // codeAutoRetrievalTimeout:
                          //     (String verificationId) {
                          //   print(verificationId);
                          // },
                          // );

                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => otp()));
                          // },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 10.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            primary: Color.fromRGBO(49, 160, 95, 1),
                          ),
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height_variable * 0.025),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
