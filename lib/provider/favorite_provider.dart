import 'dart:convert';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icon.dart';
import 'package:mk1_companion/Pages/favorites.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/characters.dart';


class FavoriteProvider extends ChangeNotifier{
  List<Character> _fCharacters = [];
  List<Character> get fCharacters => _fCharacters;
  late SharedPreferences sharedPreferences;


  void toggleFavorite(Character character)async{
    final isExist = _fCharacters.contains(character);
    if(isExist){
      _fCharacters.remove(character);
    }else{
      _fCharacters.add(character);
      storeData(character);
      print('add to list');
    }
    notifyListeners();
  }

  bool isExist(Character character){
    final isExist = _fCharacters.contains(character);
    return isExist;
  }

  void storeData(Character fCharacter)async{
    sharedPreferences = await SharedPreferences.getInstance();

    String data = jsonEncode(fCharacter);
    print(data);

    sharedPreferences.setString('data', data);
  }

}