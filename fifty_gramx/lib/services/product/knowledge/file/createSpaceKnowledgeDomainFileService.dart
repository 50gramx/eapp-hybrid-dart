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

import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:flutter/foundation.dart';

class CreateSpaceKnowledgeDomainFileService {
  // Client declarations here
  static CreateSpaceKnowledgeDomainFileServiceClient? _serviceClient;

  CreateSpaceKnowledgeDomainFileService._();

  // getting the client on the very first call
  static Future<CreateSpaceKnowledgeDomainFileServiceClient>
      get serviceClient async =>
          _serviceClient ??= CreateSpaceKnowledgeDomainFileServiceClient(
              await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    if (kDebugMode) {
      print("CreateSpaceKnowledgeDomainFileService:dispose");
    }
  }
}
