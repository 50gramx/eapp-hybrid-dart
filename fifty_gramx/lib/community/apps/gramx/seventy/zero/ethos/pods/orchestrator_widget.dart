import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/machine_configs/MachineState.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/switchConfigurationItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrchestratorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MachineState>(
      builder: (context, state, child) {
        return SwitchConfigurationItem(
          titleText: "Orchestrator State",
          isEnabled: true,
          switchValue: state.isOrchestatorRunning,
          isLoading: false,
          switchOnChanged: (value) {
            Provider.of<MachineState>(context, listen: false)
                .toggleOrchestrator();
          },
        );
      },
    );
  }
}
