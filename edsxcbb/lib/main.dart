import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img3.akspic.ru/previews/8/7/7/6/6/166778/166778-spongebob-360x640.jpg"),
              ),
              Text("Gusev Ilay"),
              Reward(
                icon: Icons.stairs,
              ),
              Reward(
                icon: Icons.dangerous,
              ),
              Reward(
                icon: Icons.cabin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Reward extends StatelessWidget {
  final IconData? icon;
  const Reward({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(icon),
          Text("Спал весь день"),
        ],
      ),
    );
  }
}
