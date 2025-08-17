import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rohansunar_portfolio/core/config/envConfig/env_config.dart';

class EmailService {
  static Future<bool> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    final serviceId = EnvConfig.emailJsServiceId;
    final templateId = EnvConfig.emailJsTemplateId;
    final publicKey = EnvConfig.emailJsPublicKey;
    final url = Uri.parse(EnvConfig.emailJsUrl);

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message,
        },
      }),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      print('Failed to send email: ${response.body}');
      return false;
    }
  }
}
