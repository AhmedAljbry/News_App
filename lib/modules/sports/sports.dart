import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nppnews/Cubit/Cubit.dart';
import 'package:nppnews/Cubit/stalet.dart';
import 'package:nppnews/shared/componet/comopnet.dart';

class Sport extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppNewCubit,StaletAppNews>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state)
      {
        var business=AppNewCubit.get(context).sports;
        return articaleBluder(business,context);
      },
    );
  }
}
