/*

          NeumorphicSwitch(
            height: 48,
            value: conversingWithAccount,
            style: NeumorphicSwitchStyle(
              activeThumbColor: AppColors.contentPrimary(context),
              activeTrackColor: AppColors.backgroundPrimary(context),
            ),
            onChanged: (toggle) {
              print("Switch onChanged: $toggle");
              setState(() {
                conversingWithAccount = toggle;
              });
            },
          ),
          Container(
            child: FlutterSwitch(
              height: 52,
              width: MediaQuery.of(context).size.width - 128,
              borderRadius: 24,
              activeIcon: Container(
                width: 52,
                height: 52,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.contentInversePrimary(context),
                  ),
                  child: Center(
                    child: Text(
                      "#${accountAssistant.accountAssistantNameCode}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.textColor(context),
                          fontSize: 26,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              inactiveToggleBorder:
                  Border.all(color: AppColors.accentColor, width: 4),
              switchBorder:
                  Border.all(color: AppColors.borderOpaque(context), width: 2),
              activeColor: AppColors.backgroundTertiary(context),
              inactiveColor: AppColors.backgroundTertiary(context),
              activeText: accountAssistant.accountAssistantName,
              activeTextFontWeight: FontWeight.w500,
              activeToggleColor: AppColors.contentInversePrimary(context),
              inactiveTextFontWeight: FontWeight.w500,
              activeTextColor: AppColors.textColor(context),
              inactiveText: widget.connectedAssistantWithBelongingEntity
                      .isConnectedToBelongingEntity
                  ? account.accountFirstName
                  : accountMeta.accountFirstName,
              inactiveToggleColor: AppColors.contentTertiary(context),
              inactiveTextColor: AppColors.baseColor(context),
              inactiveIcon: Container(
                width: 52,
                height: 52,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.contentTertiary(context),
                  ),
                  child: Center(
                    child: Text(
                      "#${accountAssistant.accountAssistantNameCode}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.baseColor(context),
                          fontSize: 26,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              onToggle: (bool value) {
                print("toggled");
              },
              toggleSize: 52,
              showOnOff: true,
              value: conversingWithAccount,
            ),
          ),
 */