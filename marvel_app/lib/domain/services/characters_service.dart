import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:marvel_app/domain/core/constants.dart';

class CharactersService {
  final Dio _dio = Dio();
  final DateTime timeStamp = DateTime.now();

  Future<Map<String, dynamic>> getCharactersByOffSet(String offSet) async {
    final String hash = _apiHashCode();
    try {
      final Response response = await _dio.get(
          '${API_URL}characters?limit=100&apikey=$PUBLIC_API_KEY&hash=$hash&ts=${timeStamp.toIso8601String()}&offset=$offSet',
          options: Options(headers: {}));
      if (response.statusCode == 200) {
        return response.data["data"];
      }
    } catch (error) {
      throw Error();
    }

    return {};
  }

  searchByName(String name) async {
    final String hash = _apiHashCode();

    try {
      final Response response = await _dio.get(
          '${API_URL}characters?nameStartsWith=$name&limit=100&apikey=$PUBLIC_API_KEY&hash=$hash&ts=${timeStamp.toIso8601String()}',
          options: Options(headers: {}));
      if (response.statusCode == 200) {
        return response.data["data"];
      }
    } catch (error) {
      throw Error();
    }
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
