import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        flex: 3,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 60),
                _title(context),
                SizedBox(height: 30),
                _emailText(),
                TextField(),
                SizedBox(height: 30),
                _passwordText(),
                TextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text _title(BuildContext c) {
    return Text(
      'Inicio de sesión',
      style:
          Theme.of(c).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Text _emailText() {
    return Text(
      'Email',
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }

  Text _passwordText() {
    return Text(
      'Contraseña',
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}
