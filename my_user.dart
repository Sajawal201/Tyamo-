import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  String? uid;
  String? email;
  String? password;
  String? username;
  String? phone;
  String? avatarUrl;
  String? displayName;
  String? frienduid;
  String? chatroomId;
  String? gender;
  bool? isLoadingStartupData = true;
  Timestamp? accountCreated;

  MyUser({
    this.uid,
    this.email,
    this.password,
    this.username,
    this.phone,
    this.avatarUrl,
    this.displayName,
    this.frienduid,
    this.chatroomId,
    this.gender,
    this.isLoadingStartupData,
    this.accountCreated,
  });
}
