import 'package:flutter/material.dart';

import 'components/form_login_component.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painel Administrativo para inserção de Posts'),
      ),
        body: SingleChildScrollView(
            child: Stack(
              children: [
              Container(
                height: 250,
                width: double.infinity,
                ),
              FormLoginComponent(),
            ],

            ))
    );
  }
}
