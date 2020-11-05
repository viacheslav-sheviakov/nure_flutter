import 'package:chopper/chopper.dart';
import 'package:simple_chopper/api/api_error.dart';
import 'package:simple_chopper/api/model/todo_model.dart';
import 'package:simple_chopper/api/services/todo_service.dart';
import 'package:simple_chopper/resources/app_constants.dart';

class ApiClient {
  static final ChopperClient _chopperClient = ChopperClient(
    baseUrl: AppConstants.fakeApiBaseUrl,
    services: [
      TodoService.create(),
    ],
    converter: JsonConverter(),
  );

  static final todoService = _chopperClient.getService<TodoService>();

  Future<List<TodoModel>> getTodos() async {
    final rawTodos = (await _makeCheckedCall(() => todoService.getAllTodos()))
        .body as List<dynamic>;
    final todos =
        rawTodos.map((rawTodo) => TodoModel.fromJson(rawTodo)).toList();

    return todos;
  }

  Future<Response> _makeCheckedCall(Future<Response> Function() call) async {
    try {
      final response = await call();

      if (response.statusCode >= 400) {
        throw ApiError(
          statusCode: response.statusCode,
          message: response.error.toString(),
        );
      }

      return response;
    } catch (ex) {
      // TODO: How to improve?
      throw ApiError(message: ex.toString());
    }
  }
}
