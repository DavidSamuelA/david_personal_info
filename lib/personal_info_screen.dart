import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        title: Text(
          'Personal Information',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.cyan),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text('Share Mobile No',style: TextStyle(
                  fontSize: 16,
                ),),
              ),
              PopupMenuItem(
                value: 2,
                child: Text('Share Mail Id', style: TextStyle(
                  fontSize: 16,
                ),),
              ),
              PopupMenuItem(
                value: 3,
                child: Text('Share Address', style: TextStyle(
                  fontSize: 16,
                ),),
              ),
              PopupMenuItem(
                value: 4,
                child: Text('Share All', style: TextStyle(
                  fontSize: 16,
                ),),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                _shareMobileNumber();
              }
              if (value == 2) {
                _shareMailId();
              }
              if (value == 3) {
                _shareAddress();
              }
              if (value == 4) {
                _shareAll();
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Text(
                  'David Samuel. A',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontFamily: 'Merriweather',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.brown.shade900,
                  ),
                  title: Text(
                    '+91 98945 70089',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.brown.shade900,
                  ),
                  title: Text(
                    'kingresurrect@gmail.com',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontFamily: 'Karla',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.brown.shade900,
                  ),
                  title: Text(
                    'Plot No: 7, Jeyans Annai Nagar, Tuckerammalpuram, Tirunelveli - 627007',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontFamily: 'Karla',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade900,
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

  _shareMobileNumber() {
    Share.share('+91 98945 70089');
    print('Mobile No: +91 98945 70089');
  }

  _shareMailId() {
    Share.share('kingresurrect@gmail.com');
    print('E-mail: kingresurrect@gmail.com');
  }

  _shareAddress() {
    Share.share(
        'Plot No: 7, Jeyans Annai Nagar, \nTuckerammalpuram, \nTirunelveli - 627007');
    print(
        'Address: Plot No: 7, Jeyans Annai Nagar, Tuckerammalpuram, Tirunelveli - 627007');
  }

  _shareAll() {
    Share.share(
        'Mobile No: +91 98945 70089 \nE-mail: kingresurrect@gmail.com \nAddress: Plot No: 7, Jeyans Annai Nagar, \nTuckerammalpuram, \nTirunelveli - 627007');
    print(
        'Mobile No: +91 98945 70089 \nE-mail: kingresurrect@gmail.com \nAddress: Plot No: 7, Jeyans Annai Nagar, \nTuckerammalpuram, \nTirunelveli - 627007');
  }
}
