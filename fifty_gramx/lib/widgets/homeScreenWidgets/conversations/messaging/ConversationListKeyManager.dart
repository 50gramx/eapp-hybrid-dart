import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// SliverAnimatedListState is used in Conversations to efficiently manage the
/// dynamic list of conversation messages. As a dependency of the usage, we need
/// a manager to abstract all the usage and modification of this list state for
/// each conversations.
///
/// ConversationListKeyManager provides functionalities to perform CRUD
/// operations to the list state.
class ConversationListKeyManager {
  /// Creates an listKey at initialisation.
  late GlobalKey<SliverAnimatedListState> _conversationListKey;

  /// Constructing the list key manager
  ConversationListKeyManager() {
    _conversationListKey = GlobalKey<SliverAnimatedListState>();
  }

  /// returns the initialised key for SliverAnimatedList property key
  getListKey() {
    return _conversationListKey;
  }

  /// removes the list item at given index
  removeItem(at) {
    _conversationListKey.currentState!.removeItem(at, (context, animation) {
      return SizedBox();
    });
  }

  /// inserts the list item at given index
  insertItem(at) {
    _conversationListKey.currentState!
        .insertItem(at, duration: Duration(microseconds: 100));
  }
}
