
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:providerpractice/model/user.dart';

class UserNotifier extends ChangeNotifier {
  List<User> _userList = [];
  int _age = 0;
  int _height = 0;

  UnmodifiableListView<User> get userList =>
    UnmodifiableListView(_userList);

  void addUser(User user) {
    _userList.add(user);
    notifyListeners();
  }
}