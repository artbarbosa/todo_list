import 'package:todo_list/src/models/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';



class HomeController {
  List<TodoModel> todos = [];
  final TodoRepository _repository;
  
  HomeState state = HomeState.start;
  HomeController(TodoRepository repository) 
    : _repository = repository;

  Future start () async {
    state = HomeState.loading;
    try{
      state =  HomeState.sucess;
    }catch (e){
      state =  HomeState.error;
    }
  }
}

enum HomeState{ start, loading, sucess, error}