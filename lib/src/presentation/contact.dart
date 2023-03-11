import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Color.fromRGBO(49, 160, 95, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Feel free to contact us with any questions or feedback:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Email:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () => launch('mailto:info@example.com'),
              child: Text(
                'mananpandey2512@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Phone:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () => launch('tel:+919711072794'),
              child: Text(
                '+91 9711072794',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Address:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Noida Uttar Pradesh India',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
