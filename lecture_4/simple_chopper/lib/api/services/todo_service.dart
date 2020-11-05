import 'package:chopper/chopper.dart';
import 'package:simple_chopper/resources/app_constants.dart';

part 'todo_service.chopper.dart';

@ChopperApi(baseUrl: AppConstants.todoUrl)
abstract class TodoService extends ChopperService {
  static TodoService create([ChopperClient client]) => _$TodoService(client);

  @Get()
  Future<Response> getAllTodos();
}
