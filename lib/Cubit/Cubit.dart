
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nppnews/Cubit/stalet.dart';
import 'package:nppnews/modules/business/business.dart';
import 'package:nppnews/modules/sciences/science.dart';
import 'package:nppnews/modules/sports/sports.dart';
import 'package:nppnews/shared/network/remote/Diohelper.dart';

class AppNewCubit extends Cubit<StaletAppNews>{
  AppNewCubit():super(initstaletAppNews());
  static AppNewCubit get(context)=>BlocProvider.of(context);
  List<Widget>scrren=
  [
    Business(),
    Sport(),
    Science(),
  ];
  List<String>titlescreen=
  [
    "Business",
    "Sport",
    "Science",
  ];
  List<BottomNavigationBarItem>itme=
  [
    BottomNavigationBarItem(icon: Icon(Icons.business),label:"Business"),
    BottomNavigationBarItem(icon: Icon(Icons.sports),label:"Sports"),
    BottomNavigationBarItem(icon: Icon(Icons.science),label:"Science"),
  ];
  int indexscrren=0;
  List<dynamic> business=[];
  List<dynamic> sports=[];
  List<dynamic> science=[];
  List<dynamic> search=[];
void bottomNavigationBar(index)
{

  indexscrren=index;
  if(index==1)
    getsports();
  if(index==2)
    getscience();

  emit(BottomNavigationBarNews());
}
void getbusiness()
{
  if(business.length==0)
  {
      emit(AppGetBusinessNewsLoding());
      DioHealper.getdate(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'business',
        'apiKey': 'b8de2af5b5ed4131941c5f8d6837ed54',
      })
          .then((value) => {
                business= value.data['articles'],
                print(business[1]['title']),
                emit(AppGetBusinessNews())
              })
          .catchError((err) {
        print(err.toString());
        emit(AppGetBusinessNewsErres(err.toString()));
      });
    }
  else
    {
      emit(AppGetBusinessNewsLoding());
    }
  }
  void getsports()
  {
    if(sports.length==0)
    {
      emit(AppGetSportsLoding());
      DioHealper.getdate(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'sports',
        'apiKey': 'b8de2af5b5ed4131941c5f8d6837ed54',
      })
          .then((value) => {
        sports= value.data['articles'],
        print(sports[1]['title']),
        emit(AppGetSportsNews())
      })
          .catchError((err) {
        print(err.toString());
        emit(AppGetSportsNewsErres(err.toString()));
      });
    }
    else
    {
      emit(AppGetBusinessNewsLoding());
    }
  }
  void getscience()
  {
    if(science.length==0)
    {
      emit(AppGetScienceNewsLoding());
      DioHealper.getdate(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'science',
        'apiKey': 'b8de2af5b5ed4131941c5f8d6837ed54',
      })
          .then((value) => {
        science= value.data['articles'],
        print(science[1]['title']),
        emit(AppGetScienceNews())
      })
          .catchError((err) {
        print(err.toString());
        emit(AppGetScienceNewsErres(err.toString()));
      });
    }
    else
    {
      emit(AppGetBusinessNewsLoding());
    }
  }
  void getsearch(value)
  {
      emit(AppGetSearchNewsLoding());
      DioHealper.getdate(url: 'v2/everything', query: {
        'q': '$value',
        'apiKey': 'b8de2af5b5ed4131941c5f8d6837ed54',
      })
          .then((value) => {
        search= value.data['articles'],
        print(search[1]['title']),
        emit(AppGetSearchNews())
      })
          .catchError((err) {
        print(err.toString());
        emit(AppGetSearchNewsErres(err.toString()));
      });
    }

}
