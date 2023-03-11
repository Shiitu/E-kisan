import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<Question> _questions = [
    Question(
      'What is the purpose of this application for farmers?',
      'The purpose of this application is to help farmers book transport to cold storage, provide them with details about monsoon, market price and helpful videos to assist them in their farming endeavors.',
    ),
    Question(
      'How do I use this application to book transport to cold storage?',
      'To book transport to cold storage, simply log in to the application and select the '
          'Book Transport'
          ' option. From there, you can enter the pickup location, drop-off location, and desired date and time for transport. Once you submit the request, the transport service provider will get back to you with a confirmation.',
    ),
    Question(
      'How can I get information about monsoon using this application?',
      'The application provides real-time updates about monsoon in your area. Simply select the '
          'Monsoon'
          ' option on the main menu and you will be able to see the current weather conditions and forecast for the upcoming days.',
    ),
    Question('Is this application free to use?',
        'Yes, this application is completely free to use. There are no hidden charges or fees associated with it.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
        backgroundColor: Color.fromRGBO(49, 160, 95, 1),
      ),
      body: ListView.builder(
        itemCount: _questions.length,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text(
                      _questions[index].question,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(_questions[index].answer),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Question {
  final String question;
  final String answer;

  Question(this.question, this.answer);
}
