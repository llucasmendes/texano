import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileStore {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/lauda.txt');
  }

  Future<String> readLauda() async {
    try {
      final file = await _localFile;

      String contents = await file.readAsString();

      return contents;
    } catch (e) {
      return '';
    }
  }

  Future<File> writelauda(String lauda) async {
    final file = await _localFile;
    return file.writeAsString(lauda);
  }
}
