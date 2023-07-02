import 'package:flutter/material.dart';

void main() => runApp(NoticeBoardApp());

class NoticeBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notice Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RoleSelectionScreen(),
    );
  }
}

class RoleSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Role'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminScreen(),
                  ),
                );
              },
              child: Text('Admin'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserScreen(),
                  ),
                );
              },
              child: Text('User'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentScreen(),
                  ),
                );
              },
              child: Text('Student'),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  List<String> notices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Notice Board'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListView.builder(
              itemCount: notices.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notices[index]),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddNoticeDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddNoticeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String noticeText = '';

        return AlertDialog(
          title: Text('Add Notice'),
          content: TextField(
            onChanged: (value) {
              noticeText = value;
            },
            decoration: InputDecoration(
              labelText: 'Notice',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                setState(() {
                  notices.add(noticeText);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<String> notices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Notice Board'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListView.builder(
              itemCount: notices.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notices[index]),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddNoticeDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddNoticeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String noticeText = '';

        return AlertDialog(
          title: Text('Add Notice'),
          content: TextField(
            onChanged: (value) {
              noticeText = value;
            },
            decoration: InputDecoration(
              labelText: 'Notice',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                setState(() {
                  notices.add(noticeText);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class StudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Notice Board'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Viewing notices as a student.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
