import 'package:flutter/material.dart';
import 'components/menu_list.dart';
import 'components/appbar.dart';
import 'components/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("HomeScreen Built");
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustAppBar(),

          WelcomeText(),
          SizedBox(height: 9.95),
          MenuList(), /////
        ],
      ),
      //bottomNavigationBar: CustBottomAppBar(),
    );
  }
}
