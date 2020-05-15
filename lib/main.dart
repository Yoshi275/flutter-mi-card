import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'Cheryl Ng',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Hopeful Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal[50],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              InkWell(
                onTap: _launchPhone,
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+65 9876 5432',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal.shade800,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: _launchEmail,
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'cheryl.nqj@gmail.com',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal.shade800,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: _launchCV,
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.work,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'linkedin.com/in/cherylnqj/',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.teal.shade800,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchPhone() async {
  const url =
      "mailto:cheryl.nqj@gmail.com?subject=&body=Hah yeah of course my number isn't really here";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEmail() async {
  const url =
      'mailto:cheryl.nqj@gmail.com?subject=We Want to Hire You!&body=I saw your Flutter app.';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCV() async {
  const url = 'https://www.linkedin.com/in/cherylnqj/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
