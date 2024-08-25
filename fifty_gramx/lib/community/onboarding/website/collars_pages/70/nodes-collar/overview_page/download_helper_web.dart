// This file is only used for the web platform
import 'dart:html' as html;

Future<void> downloadFile(String url, String fileName) async {
  html.AnchorElement anchorElement = html.AnchorElement(href: url);
  anchorElement.download = fileName;
  anchorElement.click();
}
