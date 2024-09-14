import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/machine_configs/MachineState.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VMInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MachineState>(
      builder: (context, state, child) {
        if (state.vmInfo.isEmpty) {
          return SizedBox();
        }
        return Column(
          children: [
            BasicConfigurationItem(
              titleText: "VM Processor",
              subtitleText: "${state.vmInfo['cpu']} CORE",
            ),
            BasicConfigurationItem(
              titleText: "VM Memory",
              subtitleText: state.vmInfo['memory'] ?? '',
            ),
            // Add other VM info items
          ],
        );
      },
    );
  }
}
