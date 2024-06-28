import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nppnews/Cubitseeting/seetingstatel.dart';
import 'package:nppnews/shared/network/local/cach_healper.dart';

class AppCubitSeetinge extends Cubit<AppSeetingeState>
{
  AppCubitSeetinge():super(AppinitlSeetingeState());
 static AppCubitSeetinge get(context)=>BlocProvider.of(context);
 bool isDrank=false;
  void changeisDrank({isdrank})
  {
    if(isdrank!= null)
      {
        isDrank=isdrank;
        emit(AppChangeisDrank());
      }
    else
      {
        isDrank=!isDrank;
        CachHealper.setBool(key: 'isDrank', value:isDrank).then((value) {
        emit(AppChangeisDrank());
        }, );
      }
  }
}