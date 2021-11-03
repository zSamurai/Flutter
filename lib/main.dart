import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/landscape_mode.dart';
import 'package:flutter_project/presentation/portrait_mode.dart';

void main() {
  runApp(const Animals());
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var URL = "https://happylearning.tv/wp-content/uploads/2017/09/ANIMALES_SALVAJES_ENG_PORTADA-01.png";

  @override
  Widget build(BuildContext context) {
    print("The build method is triggered");
    return Scaffold(
      appBar: AppBar(title: const Text("Animals"),
      
      centerTitle: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),),
      
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
