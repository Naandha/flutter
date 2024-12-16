import 'package:flutter/material.dart';
import 'db helper.dart';
import 'db loginpage.dart';


class HomeAdmin extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<HomeAdmin> {
  late Future<List<Map<String, dynamic>>> _userList;

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  Future<void> deleteUser(int Id) async {
    await SqfHelper.deleteUser(Id);
    _fetchUsers();
    setState(() {});
  }

  void _fetchUsers() {
    _userList = SqfHelper.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Registered Users'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _userList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                final user = snapshot.data?[index];
                return ListTile(
                  title: Text(user?['name'] ?? ''),
                  subtitle: Text(user?['username']),
                  trailing: IconButton(
                    onPressed: () {
                      deleteUser(user?['id']);
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('No users registered yet.'));
          }
        },
      ),
    );
  }
}