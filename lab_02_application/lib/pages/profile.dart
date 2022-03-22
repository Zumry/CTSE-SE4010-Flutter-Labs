import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('My App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/images/photo.jpeg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 40,
            ),
            const Text(
              'Zumry Amanullah',
              style: TextStyle(fontSize: 20, fontFamily: 'Lobster'),
            ),
            const Text(
              "Mr. ",
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(FontAwesomeIcons.facebook,
                    color: Color.fromARGB(115, 0, 0, 0), size: 25.0),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.email,
                  color: Color.fromARGB(115, 0, 0, 0),
                  size: 25.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
