import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// The base class for the different types of items the list can contain.
abstract class DomainSpaceIconButton {
  /// The title line to show in a list item.
  Widget buildKnowledgeDomainSpaceIconButton(BuildContext context);

  Widget buildProductDomainSpaceIconButton(BuildContext context);

  Widget buildServiceDomainSpaceIconButton(BuildContext context);
}
