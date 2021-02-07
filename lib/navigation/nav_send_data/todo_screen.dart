// https://flutter.dev/docs/cookbook/navigation/passing-data

import 'package:cookbook_flutter/navigation/nav_send_data/detail_screen.dart';
import 'package:cookbook_flutter/navigation/nav_send_data/todo.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  //requiring the list of todos
  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
