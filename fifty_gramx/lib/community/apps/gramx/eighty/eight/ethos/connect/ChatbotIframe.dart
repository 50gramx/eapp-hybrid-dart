import 'package:fifty_gramx/community/apps/gramx/eighty/eight/ethos/connect/stub_chatbot_iframe.dart'
    if (dart.library.html) 'package:fifty_gramx/community/apps/gramx/eighty/eight/ethos/connect/web_chatbot_iframe.dart'
    if (dart.library.io) 'package:fifty_gramx/community/apps/gramx/eighty/eight/ethos/connect/windows_chatbot_iframe.dart';
import 'package:flutter/material.dart';

class ChatbotIframe extends StatelessWidget {
  final String srcDoc;

  ChatbotIframe({required this.srcDoc});

  @override
  Widget build(BuildContext context) {
    // Create a unique viewId

    final universalChatbotIframe = UniversalChatbotIframe();
    return universalChatbotIframe.buildIframe(srcDoc);
  }
}
