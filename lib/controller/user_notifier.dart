
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:providerpractice/model/user.dart';

class UserNotifier extends ChangeNotifier {
  List<User> _userList = [];
  int _age = 0;
  int _height = 0;

  UnmodifiableListView<User> get userList =>
    UnmodifiableListView(_userList);
  
  int get age => _age;

  int get height =>_height;

  addUser(User user) {
    _userList.add(user);
    notifyListeners();
  }

  deleteUser(index) {
    _userList.removeWhere((_user) => _user.name == _userList[index].name);
    notifyListeners();
  }

  incrementAge() {
    _age++;
    notifyListeners();
  }

  incrementHeight() {
    _height++;
    notifyListeners();
  }
}