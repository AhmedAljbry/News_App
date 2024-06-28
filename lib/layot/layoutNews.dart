import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nppnews/Cubit/Cubit.dart';
import 'package:nppnews/Cubit/stalet.dart';
import 'package:nppnews/Cubitseeting/settingcubit.dart';
import 'package:nppnews/modules/search/Search.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppNewCubit,StaletAppNews >(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
       var scrren=AppNewCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("${scrren.titlescreen[scrren.indexscrren]}"),
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Serach(),));
              }, icon:Icon (Icons.search_rounded)),
              IconButton(onPressed: (){
                AppCubitSeetinge.get(context).changeisDrank();
              }, icon: Icon(Icons.light_mode_outlined)),
            ],
          ),
          body: scrren.scrren[scrren.indexscrren],
          bottomNavigationBar: BottomNavigationBar(
            items: scrren.itme,
            currentIndex: scrren.indexscrren,
            onTap: (value) {
              scrren.bottomNavigationBar(value);
            },
          ),

        );
      },
    );
  }
}
