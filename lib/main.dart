import 'package:flutter/material.dart';
import 'package:myapp/profile_pic.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("My Profile"),
          elevation: 0.0,
          backgroundColor: Colors.black26,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){},
          ),

        ),
        body: MyProfile(),
      ),
    ),
  );
}

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child: ProfilePic(),
            ),
            Text(
              'Hello, Aditya Singh',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Premium (29 Days)',
              style: TextStyle(
                color: Colors.cyan.shade300,
                fontSize: 20.0,
              ),
            ),
         Row(
           children: [

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical:  10.0),
               child: Text(
                 'General',
               style: TextStyle(
                 color: Colors.blueGrey,
                 fontSize: 20.0,

               ),
               ),
             ),
           ],
         ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.cyanAccent,
                ),
                title: Text(
                  'Subscription & Payment',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),

            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.cyanAccent,
                ),
                title: Text(
                  'Profile Setting',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.vpn_key,
                  color: Colors.cyanAccent,
                ),
                title: Text(
                  'Password Setting',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.cyanAccent,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),

            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical:  10.0),
                  child: Text(
                    'Feedback',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,

                    ),
                  ),
                ),
              ],
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.feedback_outlined,
                  color: Colors.cyanAccent,
                ),
                title: Text(
                  'Give Feedback',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 18.0,
                  ),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.bug_report,
                  color: Colors.cyanAccent,
                ),
                title: Text(
                  'Bug report',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
