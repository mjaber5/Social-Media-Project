import 'package:flutter/material.dart';
import 'package:social_media_project/models/user.dart';
import 'package:social_media_project/services/auth.dart';

class UserProvider with ChangeNotifier {
  UserModel? userModel;
  bool isLoad = true;

  getDetails() async {
    userModel = await AuthMethod().getUserDetails();
    isLoad = false;
    notifyListeners();
  }
}
