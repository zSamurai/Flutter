import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/landscape_mode.dart';
import 'package:flutter_project/presentation/portrait_mode.dart';
import 'package:flutter_project/provider_class.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ImageAndDescProvider(),
        )
      ],
      child: const Animals(),
    ),
  );
}

class Animals extends StatelessWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Animals",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animals",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (MediaQuery.of(context).orientation == Orientation.portrait) {
            return const PortraitMode();
          } else {
            return const LandscapeMode();
          }
        },
      ),
    );
  }
}
