import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/machine_configs/MachineState.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/machine_configs/host_info_widget.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/orchestrator_widget.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/vm_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

class MachineConfigurationPerformancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MachineState(),
      child: Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: RefreshIndicator(
          onRefresh: () =>
              Provider.of<MachineState>(context, listen: false).refreshAll(),
          child: CustomScrollView(
            slivers: <Widget>[
              CustomSliverAppBar(
                labelText: "Galaxy Machines",
                actionLabelText: "Refresh",
                isBackEnabled: false,
                isActionEnabled: true,
                trailingButtonCallback: () =>
                    Provider.of<MachineState>(context, listen: false)
                        .refreshAll(),
                onStretchTriggerCallback: () {},
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  HostInfoWidget(),
                  VMInfoWidget(),
                  OrchestratorWidget(),
                  // Add other widgets here
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
