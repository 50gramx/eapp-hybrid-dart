import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/listItem/standard/artworksmall/labelWIthSupportParaWithIconTrailing.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyConnectionWidget extends StatefulWidget {
  const MyConnectionWidget({Key? key}) : super(key: key);

  @override
  State<MyConnectionWidget> createState() => _MyConnectionWidgetState();
}

class _MyConnectionWidgetState extends State<MyConnectionWidget> {
  Account myAccount = Account.getDefault();

  getMyAccount() async {
    myAccount = await AccountData().readAccount();
    setState(() {});
  }

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
                "I AM",
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
          Neumorphic(
            style: NeumorphicStyle(
              color: AppColors.backgroundPrimary(context),
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
              border: NeumorphicBorder(
                  color: AppColors.backgroundPrimary(context), width: 2),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: LabelWithSupportParaWithIconTrailing(
                labelText: myAccount.accountFirstName +
                    " " +
                    myAccount.accountLastName,
                supportParaText: myAccount.accountMobileNumber,
              ),
            ),
          ),
        ]));
  }

  @override
  void initState() {
    getMyAccount();
    super.initState();
  }
}
