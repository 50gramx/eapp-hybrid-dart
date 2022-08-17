import 'package:flutter/widgets.dart';

/// The base class for the different types of items the list can contain.
abstract class ConversationsMessagesListItem {
  /// The title line to show in a list item.

  Widget buildAccountShortSentMessage(BuildContext context);

  Widget buildAccountShortReceivedMessage(BuildContext context);

  Widget buildAccountConversationsSentMessage(BuildContext context);

  Widget buildAccountConversationsReceivedMessage(BuildContext context);

  Widget buildAccountAssistantConversationsSentMessage(BuildContext context);

  Widget buildAccountAssistantConversationsReceivedMessage(
      BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}
