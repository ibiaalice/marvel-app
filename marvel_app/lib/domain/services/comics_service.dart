import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'package:marvel_app/domain/core/constants.dart';

class ComicsService {
  final Dio _dio = Dio();
  final DateTime timeStamp = DateTime.now();

  Future<Map<String, dynamic>> getComicsByCharacterId(
      String characterId) async {
    final String hash = _apiHashCode();
    try {
      final Response response = await _dio.get(
          '$API_URL_COMICS$characterId/comics?limit=100&apikey=0a90e15d6f5538fdda699aa6d9ed999a&hash=$hash&ts=${timeStamp.toIso8601String()}');

      if (response.statusCode == 200) {
        return response.data["data"];
      }
    } catch (error) {
      throw Error();
    }

    return {};
  }

  String _apiHashCode() {
    final String hash = _generateMd5(
        timeStamp.toIso8601String() + PRIVATE_API_KEY + PUBLIC_API_KEY);

    return hash;
  }

  String _generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
