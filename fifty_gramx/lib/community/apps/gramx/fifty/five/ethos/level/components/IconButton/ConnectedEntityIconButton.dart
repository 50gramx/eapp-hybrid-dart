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
