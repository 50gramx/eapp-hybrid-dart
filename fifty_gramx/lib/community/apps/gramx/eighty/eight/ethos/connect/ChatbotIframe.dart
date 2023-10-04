import 'dart:html' as html;
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';

class ChatbotIframe extends StatelessWidget {
  final String srcDoc;

  ChatbotIframe({required this.srcDoc});

  @override
  Widget build(BuildContext context) {
    // Create a unique viewId
    final String viewId = 'chatbot-iframe';

    // Register the view with the platform
    ui.platformViewRegistry.registerViewFactory(
      viewId,
      (int _) => html.IFrameElement()
        ..width = '400' // or any desired width
        ..height = '600' // or any desired height
        ..srcdoc = srcDoc
        ..style.border = 'none',
    );

    return HtmlElementView(
      viewType: 'chatbot-iframe',
    );
  }
}
