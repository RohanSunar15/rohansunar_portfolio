import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<bool> verifyEmailWithAPI(String email) async {
  final apiKey = dotenv.env['MAILBOXLAYER_API_KEY'];
  final url = Uri.parse(
    'https://apilayer.net/api/check?access_key=$apiKey&email=$email',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['format_valid'] == true && data['smtp_check'] == true;
  } else {
    throw Exception('Failed to verify email');
  }
}
