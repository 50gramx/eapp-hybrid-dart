import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// The base class for the different types of items the list can contain.
abstract class ConnectedEntityIconButton {
  /// The title line to show in a list item.
  Widget buildConnectedContactIconButton(BuildContext context);

  Widget buildConnectedAccountIconButton(BuildContext context);

  Widget buildConnectedAccountMetaIconButton(BuildContext context);

  Widget buildConnectedOrganisationIconButton(BuildContext context);

  Widget buildConnectedAccountAssistantIconButton(BuildContext context);

}
