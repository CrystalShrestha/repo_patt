import 'package:flutter/material.dart';
import 'package:getitfrontend/di/di.dart';
import 'package:getitfrontend/view/add_user_view.dart';
import 'package:getitfrontend/view/display_user_view.dart';

void main() {
  initModule();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AddUserView(),
        '/displayUser': (context) => const DisplayUserView(),
      },
    ),
  );
}
