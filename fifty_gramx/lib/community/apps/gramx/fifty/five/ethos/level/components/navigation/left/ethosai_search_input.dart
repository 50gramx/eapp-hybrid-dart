import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/NameTextField.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EthosaiSearchInput extends StatelessWidget {
  final TextEditingController nameTextFieldController;

  EthosaiSearchInput({required this.nameTextFieldController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: 64,
        child: Neumorphic(
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            depth: 6,
            boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.all(Radius.circular(24))),
            color: AppColors.contentInverseSecondary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.contentInverseTertiary(context),
              width: 2,
            ),
          ),
          margin: EdgeInsets.only(bottom: 8, right: 16, left: 8, top: 8),
          child: Column(
            children: [
              // Update with tile for ethosai with search
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: NameTextField(
                    hintText: "Search Ethosverse",
                    nameTextFieldController: nameTextFieldController),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
