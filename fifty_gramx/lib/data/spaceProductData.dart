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
import 'package:eapp_dart_domain/ethos/elint/entities/space_product.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/product/space_product/access_space_product.pb.dart';
import 'package:fifty_gramx/services/product/product/space/accessSpaceProductService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpaceProductData {
  saveSpaceProduct(SpaceProduct spaceProduct) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('spaceProduct', spaceProduct.writeToJson());
  }

  Future<SpaceProduct> readSpaceProduct() async {
    final prefs = await SharedPreferences.getInstance();
    var details = prefs.getString('spaceProduct') ?? "";
    if (details == "") {
      return SpaceProduct.getDefault();
    } else {
      return SpaceProduct.fromJson(details);
    }
  }

  saveSpaceProductServicesAccessSessionTokenDetails(
      PersistentSessionTokenDetails
          spaceProductServicesAccessSessionTokenDetails) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("spaceProductServicesAccessSessionTokenDetails",
        spaceProductServicesAccessSessionTokenDetails.writeToJson());
  }

  Future<PersistentSessionTokenDetails>
      readSpaceProductServicesAccessSessionTokenDetails() async {
    final prefs = await SharedPreferences.getInstance();
    var details =
        prefs.getString('spaceProductServicesAccessSessionTokenDetails') ?? "";
    if (details == "") {
      return PersistentSessionTokenDetails.getDefault();
    } else {
      return PersistentSessionTokenDetails.fromJson(details);
    }
  }

  saveSpaceProductServicesAccessAuthDetails(
      SpaceProductServicesAccessAuthDetails
          spaceProductServicesAccessAuthDetails) async {
    final prefs = await SharedPreferences.getInstance();
    saveSpaceProduct(spaceProductServicesAccessAuthDetails.spaceProduct);
    saveSpaceProductServicesAccessSessionTokenDetails(
        spaceProductServicesAccessAuthDetails
            .spaceProductServicesAccessSessionTokenDetails);
    prefs.setString('spaceProductServicesAccessAuthDetails',
        spaceProductServicesAccessAuthDetails.writeToJson());
  }

  Future<SpaceProductServicesAccessAuthDetails>
      readSpaceProductServicesAccessAuthDetails() async {
    var spaceProductServicesAccessAuthDetails =
        SpaceProductServicesAccessAuthDetails(
            spaceProduct: await readSpaceProduct(),
            spaceProductServicesAccessSessionTokenDetails:
                await readSpaceProductServicesAccessSessionTokenDetails(),
            requestedAt: Timestamp.fromDateTime(DateTime.now()));

    var validateSpaceProductServicesResponse =
        await AccessSpaceProductService.validateSpaceProductServices(
            spaceProductServicesAccessAuthDetails);

    if (validateSpaceProductServicesResponse
            .spaceProductServicesAccessValidationDone ==
        false) {
      var spaceProductAccessTokenResponse =
          await AccessSpaceProductService.spaceProductAccessToken();
      if (spaceProductAccessTokenResponse.spaceProductServicesAccessDone) {
        saveSpaceProductServicesAccessAuthDetails(
            spaceProductAccessTokenResponse
                .spaceProductServicesAccessAuthDetails);
        return spaceProductAccessTokenResponse
            .spaceProductServicesAccessAuthDetails;
      } else {
        return SpaceProductServicesAccessAuthDetails.getDefault();
      }
    } else {
      return spaceProductServicesAccessAuthDetails;
    }
  }
}
