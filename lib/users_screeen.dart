import 'package:flutter/material.dart';
import 'package:iti_task2/users.dart';
import 'package:iti_task2/users_service.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<Users> users = [];

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UsersScreen"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => Column(
          children: [
            Text(users[index].id.toString()),
            Text(users[index].name),
            Text(users[index].userName),
            Text(users[index].email),
            Text(users[index].phoneNumber),
            Text(users[index].website),
          ],
        ),
      ),
    );
  }

  Future<void> getUsers() async {
    users = await UserService().fetchComments();
    setState(() {});
  }
}
