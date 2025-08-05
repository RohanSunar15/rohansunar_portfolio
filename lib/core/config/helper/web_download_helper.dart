@JS()
library web_download_helper;

import 'package:js/js.dart';

@JS('downloadFile')
external void downloadFile(String url, String filename);
