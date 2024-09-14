import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostUserDetailsPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/machine_configs/MachineState.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HostInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MachineState>(
      builder: (context, state, child) {
        return Column(
          children: [
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText(state.hostInfo['name-uc'] ?? '')
                    .build(context)),
            SelectorConfigurationItem(
                titleText: state.hostInfo['name'] ?? 'User',
                subtitleText: "Update Password",
                selectorCallback: () {
                  AppPushPage()
                      .pushHorizontalPage(context, HostUserDetailsPage());
                }),
            BasicConfigurationItem(
              titleText: "Release",
              subtitleText: state.hostInfo['release'] ?? '',
            ),
            BasicConfigurationItem(
                titleText: "Processor",
                subtitleText: state.hostInfo['processor'] ?? ''),
            BasicConfigurationItem(
                titleText: "Memory",
                subtitleText: state.hostInfo['memory'] ?? ''),
            BasicConfigurationItem(
                titleText: "Free Storage",
                subtitleText: state.hostInfo['free-storage'] ?? ''),
            BasicConfigurationItem(
                titleText: "Public IP",
                subtitleText: state.hostInfo['public-ip-address'] ?? ''),
            BasicConfigurationItem(
                titleText: "Private IP",
                subtitleText: state.hostInfo['public-ip-address'] ?? ''),
          ],
        );
      },
    );
  }
}
