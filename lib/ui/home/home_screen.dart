import 'package:flutter/material.dart';
import 'package:flutter_language/locale/my_localization.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(MyLocalization.of(context).homeScreen),
      ),
    );
  }
}
