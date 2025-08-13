class EnvConfig {
  static const emailJsUrl = String.fromEnvironment(
    'EMAILJS_URL',
  );

  //secret
  static const emailJsServiceId = String.fromEnvironment(
    'EMAILJS_SERVICE_ID',
  );
  static const emailJsTemplateId = String.fromEnvironment(
    'EMAILJS_TEMPLATE_ID',
  );
  static const emailJsPublicKey = String.fromEnvironment(
    'EMAILJS_PUBLIC_KEY',
  );
  static const mailBoxLayerApiKey = String.fromEnvironment(
    'MAILBOXLAYER_API_KEY',
  );
}
