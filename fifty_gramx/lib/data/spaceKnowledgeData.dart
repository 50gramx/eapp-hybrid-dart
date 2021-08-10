import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/access_space_knowledge.pb.dart';
import 'package:fifty_gramx/services/product/knowledge/space/accessSpaceKnowledgeService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpaceKnowledgeData {
  saveSpaceKnowledge(SpaceKnowledge spaceKnowledge) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('spaceKnowledge', spaceKnowledge.writeToJson());
  }

  Future<SpaceKnowledge> readSpaceKnowledge() async {
    final prefs = await SharedPreferences.getInstance();
    var details = prefs.getString('spaceKnowledge') ?? "";
    if (details == "") {
      return SpaceKnowledge.getDefault();
    } else {
      return SpaceKnowledge.fromJson(details);
    }
  }

  saveSpaceKnowledgeServicesAccessSessionTokenDetails(
      PersistentSessionTokenDetails
          spaceKnowledgeServicesAccessSessionTokenDetails) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("spaceKnowledgeServicesAccessSessionTokenDetails",
        spaceKnowledgeServicesAccessSessionTokenDetails.writeToJson());
  }

  Future<PersistentSessionTokenDetails>
      readSpaceKnowledgeServicesAccessSessionTokenDetails() async {
    final prefs = await SharedPreferences.getInstance();
    var details =
        prefs.getString('spaceKnowledgeServicesAccessSessionTokenDetails') ??
            "";
    if (details == "") {
      return PersistentSessionTokenDetails.getDefault();
    } else {
      return PersistentSessionTokenDetails.fromJson(details);
    }
  }

  saveSpaceKnowledgeServicesAccessAuthDetails(
      SpaceKnowledgeServicesAccessAuthDetails
          spaceKnowledgeServicesAccessAuthDetails) async {
    final prefs = await SharedPreferences.getInstance();
    saveSpaceKnowledge(spaceKnowledgeServicesAccessAuthDetails.spaceKnowledge);
    saveSpaceKnowledgeServicesAccessSessionTokenDetails(
        spaceKnowledgeServicesAccessAuthDetails
            .spaceKnowledgeServicesAccessSessionTokenDetails);
    // TODO: remove this, modify read services
    prefs.setString('spaceKnowledgeServicesAccessAuthDetails',
        spaceKnowledgeServicesAccessAuthDetails.writeToJson());
  }

  Future<SpaceKnowledgeServicesAccessAuthDetails>
      readSpaceKnowledgeServicesAccessAuthDetails() async {
    var spaceKnowledgeServicesAccessAuthDetails =
        SpaceKnowledgeServicesAccessAuthDetails(
            spaceKnowledge: await readSpaceKnowledge(),
            spaceKnowledgeServicesAccessSessionTokenDetails:
                await readSpaceKnowledgeServicesAccessSessionTokenDetails(),
            requestedAt: Timestamp.fromDateTime(DateTime.now()));

    var validateSpaceKnowledgeServicesResponse =
        await AccessSpaceKnowledgeService.validateSpaceKnowledgeServices(
            spaceKnowledgeServicesAccessAuthDetails);

    if (validateSpaceKnowledgeServicesResponse
            .spaceKnowledgeServicesAccessValidationDone ==
        false) {
      var spaceKnowledgeAccessTokenResponse =
      await AccessSpaceKnowledgeService.spaceKnowledgeAccessToken();
      if (spaceKnowledgeAccessTokenResponse
          .spaceKnowledgeServicesAccessDone) {
        saveSpaceKnowledgeServicesAccessAuthDetails(
            spaceKnowledgeAccessTokenResponse
                .spaceKnowledgeServicesAccessAuthDetails);
        return spaceKnowledgeAccessTokenResponse
            .spaceKnowledgeServicesAccessAuthDetails;
      } else {
        return SpaceKnowledgeServicesAccessAuthDetails.getDefault();
      }
    } else {
      return spaceKnowledgeServicesAccessAuthDetails;
    }
  }
}
