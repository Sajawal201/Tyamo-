import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyamo/Model/my_user.dart';

class UserDatabase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<bool> createUserinDb(MyUser user) async {
    try {
      await firestore.collection("users").doc(user.uid).set({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "username": user.username,
        "phone": user.phone,
        "avatarUrl": user.avatarUrl,
        "displayName": user.displayName,
        "frienduid": user.frienduid,
        "chatroomId": user.chatroomId,
        "gender": user.gender,
        "accountCreated": Timestamp.now(),
      });
      return true;
    } catch (e) {
      print('Error occurred during user creation in database: $e');
      return false;
    }
  }

  Future<MyUser> getUserInfoById(String uid) async {
    MyUser myUser = MyUser();
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await firestore.collection("users").doc(uid).get();

    myUser.uid = documentSnapshot.data()!["uid"];
    myUser.email = documentSnapshot.data()!["email"];
    myUser.avatarUrl = documentSnapshot.data()!["avatarUrl"];
    myUser.username = documentSnapshot.data()!["username"];
    myUser.phone = documentSnapshot.data()!["phone"];
    myUser.displayName = documentSnapshot.data()!["displayName"];
    myUser.frienduid = documentSnapshot.data()!["frienduid"];
    myUser.chatroomId = documentSnapshot.data()!["chatroomId"];
    myUser.gender = documentSnapshot.data()!["gender"];

    return myUser;
  }
}
