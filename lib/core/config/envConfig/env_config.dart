class EnvConfig {
  //secret
  static const emailJsServiceId = String.fromEnvironment(
    'EMAILJS_SERVICE_ID',
    defaultValue: '',
  );
  static const emailJsTemplateId = String.fromEnvironment(
    'EMAILJS_TEMPLATE_ID',
    defaultValue: '',
  );
  static const emailJsPublicKey = String.fromEnvironment(
    'EMAILJS_PUBLIC_KEY',
    defaultValue: '',
  );
  static const mailBoxLayerApiKey = String.fromEnvironment(
    'MAILBOXLAYER_API_KEY',
    defaultValue: '',
  );
}
