import 'package:flutter/foundation.dart';

import '../model/characters.dart';
import 'file_manager.dart';

class FileController extends ChangeNotifier{
  String _text = '';
  late Character _character;

  String get text => _text;
  Character get character => _character;
  
  readCharacter()async{
    _character = Character.fromJson(await FileManager().readJsonFile());
    notifyListeners();
  }

  writeCharacter(Character character)async{
    _character = await FileManager().writeJsonFile(character);
    notifyListeners();
  }


}