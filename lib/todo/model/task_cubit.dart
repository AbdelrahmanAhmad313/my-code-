import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'task_model.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
  addTask(TaskModel model){
    emit(UpdateTask([...state.tasksList, model]));


  }
  removeTask(int id){
    final List<TaskModel> newlist=state.tasksList.where((task)=> task.id!=id).toList();
    emit(UpdateTask(newlist));
  }
  toggleTask(int id){
    final List<TaskModel> newlist=state.tasksList.map((task){
      return task.id==id? task.copywith(isCompleted: !task.isCompleted):task;
    }).toList();
    emit(UpdateTask(newlist));
  }
}
