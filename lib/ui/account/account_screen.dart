import 'package:flutter/material.dart';
import 'package:flutter_language/locale/my_localization.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(MyLocalization.of(context).accountScreen),
      ),
    );
  }
}
