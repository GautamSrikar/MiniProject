import 'package:flutter/cupertino.dart';
import 'package:flutter_food/screens/login.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: LoginPage(),
    ));
  }
}
