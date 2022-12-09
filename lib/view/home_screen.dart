import 'package:base_flutter_web_firebase/view/login_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modelview/posts/generate_posts.dart';
import 'styles/colors.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  TextEditingController _controladorId = TextEditingController();
  TextEditingController _controladorUserId = TextEditingController();
  TextEditingController _controladorTitle = TextEditingController();
  TextEditingController _controladorBody = TextEditingController();
  TextEditingController _controladorUrlImage = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () {
                  Get.offAll(() => LoginPageScreen());
                },
                child: Icon(Icons.login_outlined)),
          ],
          title: Text('Painel Administrativo para inserção de Posts'),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
                  child: TextFormField(
                    controller: _controladorTitle,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: ColorsStyle().botaoFacebook,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      hintText: 'Título',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
                  child: TextFormField(
                    controller: _controladorBody,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: ColorsStyle().botaoFacebook,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      hintText: 'Descrição',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
                  child: TextFormField(
                    controller: _controladorUrlImage,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: ColorsStyle().botaoFacebook,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      hintText: 'URL POST',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
                  child: TextFormField(
                    controller: _controladorUserId,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: ColorsStyle().botaoFacebook,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      hintText: 'ID Usuario',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
                  child: TextFormField(
                    controller: _controladorId,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: ColorsStyle().botaoFacebook,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.blue)),
                      hintText: 'ID do POST',
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 50,
                  child: ElevatedButton.icon(
                      style: TextButton.styleFrom(backgroundColor: ColorsStyle().botaoFacebook),
                      onPressed: () {
                        generating_posts(int.parse(_controladorUserId.text), int.parse(_controladorId.text),_controladorTitle.text, _controladorBody.text, _controladorUrlImage.text );
                      },
                      icon: Icon(Icons.login),
                      label: Text("Criar Post")),
                ),
              ],

            ))
    );
  }
}
