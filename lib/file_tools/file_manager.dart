import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import '../model/characters.dart';

class FileManager{
  String fileContent = ' ';

  Future<String> get _directoryPath async{
    Directory dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get _file async{
    final path = await _directoryPath;
    return File('$path/characters.json');
  }

  Future<Map<String, dynamic>> readJsonFile()async{
    File file = await _file;
    if (await file.exists()) {
      try{
        fileContent = await file.readAsString();
      } catch(e) {
        print(e);
      }
    }
    return json.decode(fileContent);
  }

  Future<Character> writeJsonFile(Character character)async{
    File file = await _file;
    await file.writeAsString(json.encode(character));
    return character;
  }
}
