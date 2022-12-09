import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';

//import '../../modelview/auth/email_pass_auth_login.dart';
import '../../modelview/auth/email_pass_auth_login.dart';
import '../styles/colors.dart';


class FormLoginComponent extends StatefulWidget {
  const FormLoginComponent({Key? key}) : super(key: key);

  @override
  State<FormLoginComponent> createState() => _FormLoginComponentState();
}

class _FormLoginComponentState extends State<FormLoginComponent> {
  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();

  Timer? _timer;
  bool eyeObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
          child: Container(
            width: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
          child: TextFormField(
            controller: login,
            keyboardType: TextInputType.emailAddress,
            cursorColor: ColorsStyle().botaoFacebook,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.blue)),
              hintText: 'E-mail',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 5, 32, 10),
          child: TextFormField(
            obscureText: eyeObscure,
            keyboardType: TextInputType.visiblePassword,
            controller: senha,
            cursorColor: ColorsStyle().formsGerais,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: GestureDetector(
                child: Icon(Icons.remove_red_eye),
                onTap: () {
                  if (eyeObscure == true) {
                    setState(() {
                      eyeObscure = false;
                    });
                  } else {
                    setState(() {
                      eyeObscure = true;
                    });
                  }
                },
              ),
              hintText: 'Senha',
            ),
          ),
        ),
        Container(
          width: 350,
          height: 50,
          child: ElevatedButton.icon(
              style: TextButton.styleFrom(backgroundColor: ColorsStyle().botaoFacebook),
              onPressed: () {
                logarUsuarioEmailSenha(login.text, senha.text);
              },
              icon: Icon(Icons.login),
              label: Text("Logar")),
        ),

      ],
    );
  }
}