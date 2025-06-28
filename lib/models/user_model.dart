import 'package:equatable/equatable.dart';

class UserModel extends Equatable{
  final int age;
  final int name;

  UserModel(this.age, this.name);

  @override
  List<Object?> get props => [age,name];

}