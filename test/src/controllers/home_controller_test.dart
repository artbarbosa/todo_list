import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_list/src/controllers/home_controller.dart';
import 'package:todo_list/src/models/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class TodoRepositoryMock extends Mock implements TodoRepository {}

main(){
final repository = TodoRepositoryMock();

final controller = HomeController(repository);

test('deve preencher varialvel todos', () async {
  when(repository.fetchTodos()).thenAnswer((_) async => [TodoModel]);
  expect(controller.state, HomeState.start);
  await controller.start();
  expect(controller.state, HomeState.sucess);
  expect(controller.todos.isNotEmpty, true);
});
test('dever modificar o estado se a definiçao modificar', () async {
  when(repository.fetchTodos()).thenThrow(Exception());
  expect(controller.state, HomeState.start);
  await controller.start();
  expect(controller.state, HomeState.error);
  expect(controller.todos.isNotEmpty, true);
});

}