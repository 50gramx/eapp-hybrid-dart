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

import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_service.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/service/space_service/access_space_service.pb.dart';
import 'package:fifty_gramx/services/product/service/space/accessSpaceServiceService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpaceServiceData {
  saveSpaceService(SpaceService spaceService) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('spaceService', spaceService.writeToJson());
  }

  Future<SpaceService> readSpaceService() async {
    final prefs = await SharedPreferences.getInstance();
    var details = prefs.getString('spaceService') ?? "";
    if (details == "") {
      return SpaceService.getDefault();
    } else {
      return SpaceService.fromJson(details);
    }
  }

  saveSpaceServiceServicesAccessSessionTokenDetails(
      PersistentSessionTokenDetails
          spaceServiceServicesAccessSessionTokenDetails) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("spaceServiceServicesAccessSessionTokenDetails",
        spaceServiceServicesAccessSessionTokenDetails.writeToJson());
  }

  Future<PersistentSessionTokenDetails>
      readSpaceServiceServicesAccessSessionTokenDetails() async {
    final prefs = await SharedPreferences.getInstance();
    var details =
        prefs.getString('spaceServiceServicesAccessSessionTokenDetails') ?? "";
    if (details == "") {
      return PersistentSessionTokenDetails.getDefault();
    } else {
      return PersistentSessionTokenDetails.fromJson(details);
    }
  }

  saveSpaceServiceServicesAccessAuthDetails(
      SpaceServiceServicesAccessAuthDetails
          spaceServiceServicesAccessAuthDetails) async {
    final prefs = await SharedPreferences.getInstance();
    saveSpaceService(spaceServiceServicesAccessAuthDetails.spaceService);
    saveSpaceServiceServicesAccessSessionTokenDetails(
        spaceServiceServicesAccessAuthDetails
            .spaceServiceServicesAccessSessionTokenDetails);
    prefs.setString('spaceServiceServicesAccessAuthDetails',
        spaceServiceServicesAccessAuthDetails.writeToJson());
  }

  Future<SpaceServiceServicesAccessAuthDetails>
      readSpaceServiceServicesAccessAuthDetails() async {
    var spaceServiceServicesAccessAuthDetails =
        SpaceServiceServicesAccessAuthDetails(
            spaceService: await readSpaceService(),
            spaceServiceServicesAccessSessionTokenDetails:
                await readSpaceServiceServicesAccessSessionTokenDetails(),
            requestedAt: Timestamp.fromDateTime(DateTime.now()));

    var validateSpaceServiceServicesResponse =
        await AccessSpaceServiceService.validateSpaceServiceServices(
            spaceServiceServicesAccessAuthDetails);

    if (validateSpaceServiceServicesResponse
            .spaceServiceServicesAccessValidationDone ==
        false) {
      var spaceServiceAccessTokenResponse =
          await AccessSpaceServiceService.spaceServiceAccessToken();
      if (spaceServiceAccessTokenResponse.spaceServiceServicesAccessDone) {
        saveSpaceServiceServicesAccessAuthDetails(
            spaceServiceAccessTokenResponse
                .spaceServiceServicesAccessAuthDetails);
        return spaceServiceAccessTokenResponse
            .spaceServiceServicesAccessAuthDetails;
      } else {
        return SpaceServiceServicesAccessAuthDetails.getDefault();
      }
    } else {
      return spaceServiceServicesAccessAuthDetails;
    }
  }
}
