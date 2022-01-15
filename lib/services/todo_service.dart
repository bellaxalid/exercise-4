import 'package:http/http.dart' as http;

import 'package:ex4/models/todo.dart';
import 'package:ex4/services/rest.dart';

class TodoService {
  Future<List<Todo>> todoList() async {
    try {
      final uri = Uri.parse('${Rest.host}/todos');
      final response =
          await http.get(uri, headers: {'Content-Type': 'application/json'});
      if (response.statusCode == 200) {
        final data = todoFromJson(response.body);
        return data;
      }
      throw response;
    } catch (exception) {
      return Future.error(exception);
    }
  }

  Future<dynamic> todoStore(Todo todo) async {
    try {
      final uri = Uri.parse('${Rest.host}/todos');
      final response = await http.post(uri, headers: {
        'Content-type': 'application/json; charset=UTF-8',
      }, body: {
        'title': todo.title,
        'description': todo.description
      });
      if (response.statusCode == 200) {
        return null;
      }
      throw response;
    } catch (exception) {
      return Future.error(exception);
    }
  }

  Future<dynamic> todoUpdate(int? id, Todo todo) async {
    try {
      final uri = Uri.parse('${Rest.host}/todos/$id');
      final response = await http.put(uri,
          body: {'title': todo.title, 'description': todo.description});
      if (response.statusCode == 200) {
        return null;
      }
      throw response;
    } catch (exception) {
      return Future.error(exception);
    }
  }

  Future<dynamic> todoDelete(int? id) async {
    try {
      final uri = Uri.parse('${Rest.host}/todos/$id');
      final response = await http.delete(
        uri,
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        return null;
      }
      throw response;
    } catch (exception) {
      return Future.error(exception);
    }
  }
}
