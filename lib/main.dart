import 'package:flutter/material.dart';

void main() {
  runApp(DigiLockerApp());
}

class DigiLockerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DigiLocker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DigiLockerHome(),
    );
  }
}

class DigiLockerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DigiLocker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to DigiLocker!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                // Perform login or authentication
                // You can use packages like firebase_auth for authentication
                // Once authenticated, navigate to the user's document list
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DocumentListScreen()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
  
  RaisedButton({required Null Function() onPressed, required Text child}) {}
}

class DocumentListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Document List'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Document 1'),
            onTap: () {
              // Open document viewer or perform action
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Document 1'),
                    content: Text('This is the content of Document 1.'),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            title: Text('Document 2'),
            onTap: () {
              // Open document viewer or perform action
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Document 2'),
                    content: Text('This is the content of Document 2.'),
                    actions: [
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
  
  FlatButton({required Null Function() onPressed, required Text child}) {}
}
