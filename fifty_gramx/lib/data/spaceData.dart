import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/space/access_space.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/space/accessSpaceService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpaceData {

  saveSpace(Space space) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('space', space.writeToJson());
  }

  Future<Space> readSpace() async {
    final prefs = await SharedPreferences.getInstance();
    var details = prefs.getString('space') ?? "";
    if (details == "") {
      return Space.getDefault();
    } else {
      return Space.fromJson(details);
    }
  }

  saveSpaceServicesAccessSessionTokenDetails(
      PersistentSessionTokenDetails
          spaceServicesAccessSessionTokenDetails) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("spaceServicesAccessSessionTokenDetails",
        spaceServicesAccessSessionTokenDetails.writeToJson());
  }

  Future<PersistentSessionTokenDetails>
      readSpaceServicesAccessSessionTokenDetails() async {
    final prefs = await SharedPreferences.getInstance();
    var details =
        prefs.getString('spaceServicesAccessSessionTokenDetails') ?? "";
    if (details == "") {
      return PersistentSessionTokenDetails.getDefault();
    } else {
      return PersistentSessionTokenDetails.fromJson(details);
    }
  }

  saveSpaceServicesAccessAuthDetails(
      SpaceServicesAccessAuthDetails spaceServicesAccessAuthDetails) async {
    final prefs = await SharedPreferences.getInstance();
    saveSpace(spaceServicesAccessAuthDetails.space);
    saveSpaceServicesAccessSessionTokenDetails(
        spaceServicesAccessAuthDetails
            .spaceServicesAccessSessionTokenDetails);
    // TODO: remove this, modify read services
    prefs.setString('spaceServicesAccessAuthDetails',
        spaceServicesAccessAuthDetails.writeToJson());
  }

  Future<SpaceServicesAccessAuthDetails>
      readSpaceServicesAccessAuthDetails() async {
    var spaceServicesAccessAuthDetails = SpaceServicesAccessAuthDetails(
        space: await readSpace(),
        spaceServicesAccessSessionTokenDetails:
            await readSpaceServicesAccessSessionTokenDetails(),
        requestedAt: Timestamp.fromDateTime(DateTime.now()));

    var validateSpaceServicesResponse =
        await AccessSpaceService.validateSpaceServices(
            spaceServicesAccessAuthDetails);

    if (validateSpaceServicesResponse.spaceServiceAccessValidationDone ==
        false) {
      var spaceAccessTokenResponse =
      await AccessSpaceService.spaceAccessToken();
      if (spaceAccessTokenResponse.spaceServicesAccessDone) {
        saveSpaceServicesAccessAuthDetails(spaceAccessTokenResponse.spaceServicesAccessAuthDetails);
        return spaceAccessTokenResponse.spaceServicesAccessAuthDetails;
      } else {
        return SpaceServicesAccessAuthDetails.getDefault();
      }
    } else {
      return spaceServicesAccessAuthDetails;
    }
  }
}
