import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/terms/states.dart';

class TermsCubit extends Cubit<TermsStates>
{
  TermsCubit():super(GetTermsLoadingState());



}