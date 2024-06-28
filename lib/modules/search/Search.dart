import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nppnews/Cubit/Cubit.dart';
import 'package:nppnews/Cubit/stalet.dart';
import 'package:nppnews/shared/componet/comopnet.dart';

class Serach extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var Search=TextEditingController();
    return BlocConsumer<AppNewCubit,StaletAppNews>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var search=AppNewCubit.get(context);
        return Scaffold(
          appBar: AppBar(),

          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: Search,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Enter Search',
                  ),
                  onChanged: (value)
                  {
                        search.getsearch(value);
                  },
                )
              ),
              Expanded(child: articaleBluder(search.search, context,isSearch: true)),
            ],
          ),
        );
      },
    );
  }
}
