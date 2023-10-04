/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'package:fifty_gramx/community/apps/gramx/eighty/eight/ethos/connect/ChatbotIframe.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BotPressConversationsPage extends StatefulWidget {
  const BotPressConversationsPage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<BotPressConversationsPage> createState() {
    return _BotPressConversationsPageState();
  }
}

// "stylesheet": "https://webchat-styler-css.botpress.app/prod/f0e80e9a-2689-48b1-a915-24333fc7b3bb/v64897/style.css"
// "stylesheet": "https://webchat-styler-css.botpress.app/prod/f0e80e9a-2689-48b1-a915-24333fc7b3bb/v50240/style.css"

final String iframeHtml = '''
<!DOCTYPE html>
<html>
<head>
  <title>Web Chat</title>
  <script src="https://cdn.botpress.cloud/webchat/v1/inject.js"></script>
</head>
<body>
  <div id="webchat"></div>
  <script>
    window.botpressWebChat.init({
      botId: 'de82101e-b0f3-44b5-8ad4-bd9c8c3948ae',
      hostUrl: 'https://cdn.botpress.cloud/webchat/v1',
      messagingUrl: 'https://messaging.botpress.cloud',
      clientId: 'de82101e-b0f3-44b5-8ad4-bd9c8c3948ae',
      "composerPlaceholder": "Curious about Mahatma Gandhi's early life? Ask me!",
      showCloseButton: false,
      "botName": "Patel 88GMx",
      hideWidget: true,
      "avatarUrl": "https://thispersondoesnotexist.com",
      "stylesheet": "https://webchat-styler-css.botpress.app/prod/f0e80e9a-2689-48b1-a915-24333fc7b3bb/v23052/style.css"
    });
    window.botpressWebChat.onEvent(function () { window.botpressWebChat.sendEvent({ type: 'show' }) }, ['LIFECYCLE.LOADED']);
  </script>
</body>
</html>
''';

class _BotPressConversationsPageState extends State<BotPressConversationsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1477948879622-5f16e220fa42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          fit: BoxFit.cover,
        ),
      ),
      child: ChatbotIframe(srcDoc: iframeHtml),
    );
  }
}
