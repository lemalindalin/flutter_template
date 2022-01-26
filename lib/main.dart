import 'package:flutter/material.dart';
import 'package:flutter_template/business_logic/cubits/app/app_cubit.dart';
import 'package:flutter_template/business_logic/cubits/app/app_cubit_logics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context) => AppCubit(),
          child: const AppCubitLogics(),
        ));
  }
}
