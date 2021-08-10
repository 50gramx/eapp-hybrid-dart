import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// The base class for the different types of items the list can contain.
abstract class AbstractEntityAssistantText {
  /// The title line to show in a list item.

  Widget buildAccountContactTitleText(BuildContext context);

  Widget buildAccountContactSubtitleText(BuildContext context);

  Widget buildAccountAssistantTitleText(BuildContext context);

  Widget buildAccountAssistantSubtitleText(BuildContext context);

  Widget buildAccountMetaAssistantTitleText(BuildContext context);

  Widget buildAccountMetaAssistantSubtitleText(BuildContext context);
}