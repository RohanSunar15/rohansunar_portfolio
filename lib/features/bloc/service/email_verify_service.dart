import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rohansunar_portfolio/core/config/envConfig/env_config.dart';

Future<bool> verifyEmailWithAPI(String email) async {
  final mailBoxLayerApiKey = EnvConfig.mailBoxLayerApiKey;
  final url = Uri.parse(
    'https://apilayer.net/api/check?access_key=$mailBoxLayerApiKey&email=$email',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['format_valid'] == true && data['smtp_check'] == true;
  } else {
    throw Exception('Failed to verify email');
  }
}
