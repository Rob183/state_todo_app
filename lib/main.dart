import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/taskScreen.dart';
import 'services/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent))),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
