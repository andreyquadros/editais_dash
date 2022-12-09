import 'package:base_flutter_web_firebase/view/components/snackbar_sucess_alert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/Post.dart';

void generating_posts(int userId, int id, String title, String body, String urlImage) {
  FirebaseFirestore db = FirebaseFirestore.instance;

  final Posts posts = Posts(userId: userId, id: id, title: '${title}', body: '${body}', urlImage: '${urlImage}');

  db.collection("posts").add(posts.toMap()).then((DocumentReference doc) =>
      print('Post adicionado com o ID: ${doc.id}'));
  snackbar_sucess_alert('Post!', 'Post criado com sucesso!');
}