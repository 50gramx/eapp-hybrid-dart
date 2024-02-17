import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/space/access_space.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/standard/artworksmall/labelWIthSupportParaWithIconTrailing.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/identity/space/accessSpaceService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyReservedSpaceWidget extends StatefulWidget {
  const MyReservedSpaceWidget({Key? key}) : super(key: key);

  @override
  State<MyReservedSpaceWidget> createState() => _MyReservedSpaceWidgetState();
}

class _MyReservedSpaceWidgetState extends State<MyReservedSpaceWidget> {
  Space mySpace = Space.getDefault();
  Account myAccount = Account.getDefault();
  bool isAccountNotFound = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: NeumorphicText(
                "MY SPACE",
                style: NeumorphicStyle(
                  color: AppColors.contentTertiary(context),
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  border: NeumorphicBorder(
                      color: AppColors.backgroundPrimary(context), width: 0.25),
                ),
                textAlign: TextAlign.start,
                textStyle: NeumorphicTextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.25),
              ),
            ),
          ),
          Visibility(
            visible: !isAccountNotFound,
            child: Neumorphic(
              style: NeumorphicStyle(
                color: AppColors.backgroundStateDisabled(context),
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                border: NeumorphicBorder(
                    color: AppColors.backgroundStateDisabled(context),
                    width: 2),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWithSupportParaWithIconTrailing(
                      labelText: "${myAccount.accountFirstName}'s Space",
                      supportParaText: mySpace.galaxy.galaxyName,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: isAccountNotFound,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Please complete ",
                        style: TextStyle(
                            color: AppColors.contentTertiary(context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                      ),
                      TextSpan(
                        text: "I AM ",
                        style: TextStyle(
                            color: AppColors.warning(context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                      ),
                      TextSpan(
                        text: "in ",
                        style: TextStyle(
                            color: AppColors.contentTertiary(context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                      ),
                      TextSpan(
                        text: "Connections ",
                        style: TextStyle(
                            color: AppColors.warning(context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                      ),
                      TextSpan(
                        text: "to discover your space.",
                        style: TextStyle(
                            color: AppColors.contentTertiary(context),
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            height: 1.14285714),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]));
  }

  @override
  void initState() {
    updateReservedSpaceDetails();
    super.initState();
  }

  updateReservedSpaceDetails() async {
    Account account = await AccountData().readAccount();
    if (account.accountId != "") {
      SpaceAccessTokenResponse spaceAccessTokenResponse =
          await AccessSpaceService.spaceAccessToken();
      if (spaceAccessTokenResponse.spaceServicesAccessDone) {
        setState(() {
          mySpace =
              spaceAccessTokenResponse.spaceServicesAccessAuthDetails.space;
          myAccount = account;
          isAccountNotFound = false;
        });
      } else {
        setState(() {
          isAccountNotFound = true;
        });
      }
    } else {
      setState(() {
        isAccountNotFound = true;
      });
    }
  }
}
