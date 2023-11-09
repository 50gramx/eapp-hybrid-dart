import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:fifty_gramx/community/apps/gramx/eighty/eight/ethos/connect/base_chatbot_iframe.dart';
import 'package:flutter/material.dart';

class UniversalChatbotIframe extends BaseChatbotIframe {
  @override
  Widget buildIframe(String srcDoc) {
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
