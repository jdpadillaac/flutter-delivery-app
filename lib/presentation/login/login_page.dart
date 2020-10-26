import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/presentation/login/widgets/end_button.dart';
import 'package:flutter_delivery_app/presentation/login/widgets/header.dart';
import 'package:flutter_delivery_app/presentation/login/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            LoginHeader(),
            LoginForm(),
            BottomButton(),
          ],
        ),
      ),
    );
  }
}
