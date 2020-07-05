import 'package:flutter/material.dart';

import 'user.dart';

class OverlapUser extends StatelessWidget {
  final List<User> user;

  OverlapUser({this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: getImages(),
      ),
    );
  }

  List<Widget> getImages() {
    List<Widget> w = [];
    double left = 0;

    for (int i = 0; i < user.length; i++) {
      w.add(
        Positioned(
          left: left,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade400, width: 2),
              image: DecorationImage(
                image: user[i].image == null
                    ? AssetImage('images/default2.jpg')
                    : AssetImage(user[i].image),
                fit:BoxFit.cover,
              ),
            ),
          ),
        ),
      );
      left = left + 30;
    }
    return w;
  }
}
