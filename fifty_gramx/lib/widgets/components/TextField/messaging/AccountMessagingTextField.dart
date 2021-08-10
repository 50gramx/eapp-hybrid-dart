import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountMessagingTextField extends StatelessWidget {
  @override
  const AccountMessagingTextField({
    Key? key,
    required this.hintText,
    required this.messageTextFieldController,
    required this.sendMessageButtonOnPressed,
    required this.messageTextFieldReadOnly,
    required this.isSendButtonEnabled,
  }) : super(key: key);

  final hintText;
  final TextEditingController messageTextFieldController;
  final VoidCallback sendMessageButtonOnPressed;
  final bool messageTextFieldReadOnly;
  final bool isSendButtonEnabled;

  Widget build(BuildContext context) {
    var profilePictureButton = Neumorphic(
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 3,
        ),
        disableDepth: true,
        lightSource: LightSource.right,
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(24)),
      ),
      padding: const EdgeInsets.all(2),
      child: NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          print("entity toggle pressed");
        },
        style: NeumorphicStyle(
          lightSource: LightSource.right,
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(24)),
          color: AppColors.contentPrimary(context),
        ),
        padding: const EdgeInsets.all(0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            "https://pbs.twimg.com/profile_images/1398518722948603906/py8p-c-l_400x400.jpg",
            height: 42.0,
            width: 42.0,
          ),
        ),
      ),
    );

    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: AppColors.backgroundPrimary(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Neumorphic(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(24)),
                    color: AppColors.backgroundInverseSecondary(context),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: TextField(
                          controller: messageTextFieldController,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          readOnly: messageTextFieldReadOnly,
                          style: TextStyle(
                              color: AppColors.contentInversePrimary(context),
                              fontSize: 16,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              height: 1.55),
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 16),
                            hintText: hintText,
                            hintStyle: TextStyle(
                                color: AppColors.contentStateDisabled(context),
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                height: 1.55),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Visibility(
                visible: isSendButtonEnabled,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.only(right: 8),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        shadowLightColor: NeumorphicTheme.isUsingDark(context)
                            ? AppColors.gray600
                            : AppColors.backgroundSecondary(context),
                        border: NeumorphicBorder(
                          isEnabled: true,
                          color: AppColors.backgroundPrimary(context),
                          width: 2,
                        ),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(24)),
                      ),
                      padding: const EdgeInsets.all(2),
                      child: NeumorphicButton(
                          provideHapticFeedback: true,
                          onPressed: () {
                            sendMessageButtonOnPressed();
                            print("send button tapped");
                          },
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(24)),
                            color: AppColors.backgroundInversePrimary(context),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: NeumorphicIcon(
                              FeatherIcons.send,
                              size: 24,
                              style: NeumorphicStyle(
                                  color:
                                  AppColors.contentInversePrimary(context)),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
