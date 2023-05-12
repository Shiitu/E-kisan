// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_youtube/flutter_youtube.dart';

class tutor extends StatefulWidget {
  const tutor({super.key});

  @override
  State<tutor> createState() => _tutorState();
}

class _tutorState extends State<tutor> {
  // void _launchYouTubeURL() async {
  //   const url = 'https://youtu.be/9ck5iEP03g4';
  //   // ignore: deprecated_member_use
  //   if (await canLaunch(url)) {
  //     // ignore: deprecated_member_use
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  // Future<void> _launchUrl(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  _launchURL1() async {
    const url = 'https://youtu.be/9ck5iEP03g4';
    if (await launch(url)) {
      await canLaunch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://youtu.be/Z9HAy9EYKKs';
    if (await launch(url)) {
      await canLaunch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url = 'https://www.youtube.com/watch?v=4Yic2CIwhSc&feature=youtu.be';
    if (await launch(url)) {
      await canLaunch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL4() async {
    const url = 'https://www.youtube.com/watch?v=l0bpy857deM';
    if (await launch(url)) {
      await canLaunch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // VideoScreenState();
  @override
  Widget build(BuildContext context) {
    double height_variable = MediaQuery.of(context).size.height;
    double width_varible = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial"),
          backgroundColor: Color.fromRGBO(49, 160, 95, 1),
        ),
        body: ListView(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/1.jpg",
                width: width_varible * 0.9,
                height: height_variable * 0.3,
              ),
              Text("Modern Potato Agriculture Technology"),
              ElevatedButton(
                onPressed: _launchURL1,
                child: Text('Watch Video'),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/sec.jpg",
                width: width_varible * 0.9,
                height: height_variable * 0.3,
              ),
              Text("Different Types of irrigation systems in Agriculture"),
              ElevatedButton(
                onPressed: _launchURL2,
                child: Text('Watch Video'),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/3.jpg",
                width: width_varible * 0.9,
                height: height_variable * 0.3,
              ),
              Text("How to Use NPK and DAP Fertilizer"),
              ElevatedButton(
                onPressed: _launchURL3,
                child: Text('Watch Video'),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/4.jpg",
                width: width_varible * 0.9,
                height: height_variable * 0.3,
              ),
              Text("World Modern Agriculture Technology"),
              ElevatedButton(
                onPressed: _launchURL4,
                child: Text('Watch Video'),
              ),
            ],
          ),
        ]));
  }
}
