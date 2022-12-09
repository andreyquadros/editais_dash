
import 'package:base_flutter_web_firebase/view/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../view/components/snackbar_error_alert.dart';


Future<void> logarUsuarioEmailSenha(String login, String senha) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: login, password: senha);
    final user = credential.user;
    if (user != null && user.email == 'ads.ariquemes@ifro.edu.br') {
      Get.off(() => const HomePageScreen());
    }
  } on FirebaseAuthException catch (error_auth) {
    print(error_auth.code);
    switch (error_auth.code) {
      case 'invalid-email':
        snackbar_error_alert("E-mail inválido!",
            "A formatação do e-mail é incorreta, por favor corrija!");
        break;
      case 'unknown':
        snackbar_error_alert("Campos vazios!",
            "Os campos estão vazios, por favor preencha corretamente");
        break;
      case 'user-not-found':
        snackbar_error_alert(
            "Erro no Firebase!", "Usuário não encontrado na Base de Dados");
        break;
    }
  }
}