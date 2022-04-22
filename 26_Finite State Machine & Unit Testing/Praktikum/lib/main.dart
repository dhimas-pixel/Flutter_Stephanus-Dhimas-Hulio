import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_26/screen/home_page.dart';
import 'package:section_26/stores/food_viewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FoodViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (_) => const Homepage(),
        },
      ),
    );
  }
}
