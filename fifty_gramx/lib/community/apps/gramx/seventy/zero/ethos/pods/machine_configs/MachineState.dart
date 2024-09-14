import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostMachineData.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/microk8sCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:flutter/foundation.dart';

class MachineState extends ChangeNotifier {
  bool _isOrchestatorRunning = false;
  String _vmState = '';
  Map<String, String> _hostInfo = {};
  Map<String, String> _vmInfo = {};

  bool get isOrchestatorRunning => _isOrchestatorRunning;
  String get vmState => _vmState;
  Map<String, String> get hostInfo => _hostInfo;
  Map<String, String> get vmInfo => _vmInfo;

  MachineState() {
    refreshAll();
  }

  Future<void> refreshAll() async {
    await Future.wait([
      refreshOrchestratorStatus(),
      refreshVMState(),
      refreshHostInfo(),
      refreshVMInfo(),
    ]);
  }

  Future<void> refreshOrchestratorStatus() async {
    _isOrchestatorRunning =
        await Microk8sCommands.status.isOrchestratorRunning();
    notifyListeners();
  }

  Future<void> refreshVMState() async {
    _vmState = await MultipassCommands.list.getOrchestratorVmState();
    notifyListeners();
  }

  Future<void> refreshHostInfo() async {
    // Implement host info fetching logic
    _hostInfo = {
      'name': await HostMachineData().name(),
      'name-uc': (await HostMachineData().name()).toUpperCase(),
      'release': await HostMachineData().release(),
      'processor': await HostMachineData().processor(),
      'memory': await HostMachineData().memory(),
      'free-storage': await HostMachineData().diskSpace(),
      'public-ip-address': await HostMachineData().publicIPAddress(),
      'private-ip-address': await HostMachineData().privateIPAddress(),
      // Add other host info here
    };
    notifyListeners();
  }

  Future<void> refreshVMInfo() async {
    // Implement VM info fetching logic
    var vmMeta = await MultipassCommands.list.getOrchestratorVmMeta();
    if (vmMeta != null && vmMeta.isNotEmpty) {
      _vmInfo = {
        'cpu': await MultipassCommands.info.getOrchestratorVmCPU(),
        'memory': await MultipassCommands.info.getOrchestratorVmMemory(),
        // Add other VM info here
      };
    } else {
      _vmInfo = {};
    }
    notifyListeners();
  }

  Future<void> toggleOrchestrator() async {
    if (_isOrchestatorRunning) {
      await Microk8sCommands.stop.now();
    } else {
      await Microk8sCommands.start.now();
    }
    await refreshOrchestratorStatus();
  }

  // Add other methods for VM and host operations
}
