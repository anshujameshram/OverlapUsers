import 'package:first_app/appbar.dart';

import 'package:first_app/overlapuser.dart';
import 'package:first_app/user.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<User> users = getImageFromServer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar('My Users', Colors.grey.shade500),
        body: Container(
          width: double.infinity,
          margin:EdgeInsets.all(12),
          child:OverlapUser(user:users)
        ));
  }
}
