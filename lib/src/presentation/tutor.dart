import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class tutor extends StatefulWidget {
  const tutor({super.key});

  @override
  State<tutor> createState() => _tutorState();
}

class _tutorState extends State<tutor> {
  void _launchYouTubeURL() async {
    const url = 'https://www.youtube.com/';
    if (await canLaunch(url)) {
      await launch(url);
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
        appBar: AppBar(title: Text("EK")),
        body: ListView(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/market.png",
                width: width_varible * 0.25,
                height: width_varible * 0.25,
              ),
              Text("Video Heading"),
              ElevatedButton(
                onPressed: _launchYouTubeURL,
                child: Text('Go to YouTube'),
              )
            ],
          )
        ]));
  }
}
