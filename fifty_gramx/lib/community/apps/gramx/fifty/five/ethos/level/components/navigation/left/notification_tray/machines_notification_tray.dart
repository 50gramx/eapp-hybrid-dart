import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MachinesNotificationTray extends NotificationTray {
  final double aggregatedCpu;
  final double aggregatedMemory;
  final double aggregatedSsdStorage;
  final double aggregatedHddStorage;
  final double aggregatedGpuMemory;
  final int aggregatedGpuCores;
  final double aggregatedGpuFlops;
  final int numberOfRegions;
  final int numberOfNodes;

  final List<Map<String, dynamic>> nodeData;

  const MachinesNotificationTray({
    required this.nodeData,
    required this.aggregatedCpu,
    required this.aggregatedMemory,
    required this.aggregatedSsdStorage,
    required this.aggregatedHddStorage,
    required this.aggregatedGpuMemory,
    required this.aggregatedGpuCores,
    required this.aggregatedGpuFlops,
    required this.numberOfRegions,
    required this.numberOfNodes,
    required List<AppNotification> notifications,
    required VoidCallback onViewDetails,
    required VoidCallback onClearAppNotifications,
  }) : super(
          notifications: notifications,
          onViewDetails: onViewDetails,
          onClearAppNotifications: onClearAppNotifications,
        );

  @override
  State<MachinesNotificationTray> createState() =>
      _MachinesNotificationTrayState();
}

class _MachinesNotificationTrayState
    extends NotificationTrayState<MachinesNotificationTray> {
  Widget buildTray(Widget trayChild) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray700
            : AppColors.backgroundSecondary(context),
        intensity: NeumorphicTheme.isUsingDark(context) ? 0.3 : 0.5,
        shape: NeumorphicShape.convex,
        depth: 0,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 1,
        ),
      ),
      child: trayChild,
    );
  }

  Map<String, dynamic> _aggregateNodeData(List<Map<String, dynamic>> nodes) {
    int totalCpu = 0;
    int totalMemory = 0;
    int totalStorage = 0;
    int totalNodes = 0;

    for (final nodeData in nodes) {
      final allocatable =
          nodeData['allocatable'] as Map<String, dynamic>? ?? {};

      // Parse and accumulate CPU
      final cpuStr = allocatable['cpu'] ?? '0';
      final cpu = int.tryParse(cpuStr) ?? 0; // Assuming CPU is in millicores
      totalCpu += cpu;

      // Parse and accumulate memory
      final memoryStr = allocatable['memory'] ?? '0Ki';
      final memory =
          _parseMemory(memoryStr); // Convert to KiB or bytes as needed
      totalMemory += memory;

      // Parse and accumulate storage
      final storageStr = allocatable['ephemeral-storage'] ?? '0Ki';
      final storage =
          _parseStorage(storageStr); // Convert to KiB or bytes as needed
      totalStorage += storage;

      totalNodes += 1;
    }

    return {
      'cpu': totalCpu,
      'memory': totalMemory,
      'storage': totalStorage,
      'nodes': totalNodes,
    };
  }

// Helper functions to parse memory and storage
  int _parseMemory(String memory) {
    // Add logic to parse and convert memory string (e.g., '512Mi') to a base unit (e.g., KiB).
    if (memory == null) return 0;
    int memoryKi = int.tryParse(memory.toString().replaceAll('Ki', '')) ?? 0;
    return (memoryKi / 1024 / 1024).toInt();
  }

  int _parseStorage(String storage) {
    if (storage == null) return 0;
    int storageKi = int.tryParse(storage.toString().replaceAll('Ki', '')) ?? 0;
    return (storageKi / 1024 / 1024).toInt();
  }

  Widget buildTrayRow() {
    final Map<String, dynamic> nodeData = widget.nodeData.first;

    final aggregatedData = _aggregateNodeData(widget.nodeData);

    return GestureDetector(
      onTap: widget.onViewDetails, // Navigate to detailed screen if needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location and total processing power
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Open Galaxy",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      color: AppColors.contentInverseSecondary(context),
                    ),
                  ),
                  Text(
                    "${aggregatedData['cpu'] * 2.27} GHz",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Montserrat",
                      color: AppColors.contentInverseSecondary(context),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Cloud icon placeholder
                  Icon(
                    Icons.cloud, // Replace with custom icon if needed
                    size: 16,
                    color: AppColors.contentInversePrimary(context),
                  ),

                  Text(
                    "Mostly Available",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.contentInverseSecondary(context),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "H:550P L:240P",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.contentInverseSecondary(context),
                      fontFamily: "Montserrat",
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 16),

          // Forecast row for CPU, Memory, Storage, and Nodes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildForecastItem(
                  "CPU", Icons.memory, "${aggregatedData['cpu']} CORES"),
              _buildForecastItem(
                  "Memory", Icons.sd_card, "${aggregatedData['memory']} GiB"),
              _buildForecastItem(
                  "Storage", Icons.storage, "${aggregatedData['storage']} GiB"),
              _buildForecastItem(
                  "Nodes", Icons.computer, "${aggregatedData['nodes']} nodes"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildForecastItem(String label, IconData icon, String value) {
    return Column(
      children: [
        Text(
          label.toUpperCase(),
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              fontFamily: "Montserrat",
              color: AppColors.contentInverseTertiary(context)),
        ),
        SizedBox(height: 8),
        Icon(
          icon,
          size: 24,
          color: AppColors.contentInversePrimary(context),
        ),
        SizedBox(height: 8),
        Text(
          value.toUpperCase(),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: "Montserrat",
            color: AppColors.contentInverseSecondary(context),
          ),
        ),
      ],
    );
  }

  // Function to compute available resources across nodes
  int computeTotalAllocatableCpu(List<Node> nodes) {
    return nodes.fold(0, (total, node) => total + node.allocatableCpu);
  }

  int computeTotalAllocatableMemory(List<Node> nodes) {
    return nodes.fold(0, (total, node) => total + node.allocatableMemory);
  }

  int computeTotalAllocatablePods(List<Node> nodes) {
    return nodes.fold(0, (total, node) => total + node.allocatablePods);
  }

  @override
  Widget build(BuildContext context) {
    return buildTray(Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTrayRow(),
          super.build(context),
        ],
      ),
    ));
  }
}

// Node details model
class Node {
  final String hostname;
  final String internalAddress;
  final int allocatableCpu;
  final int allocatableMemory;
  final int allocatablePods;

  Node({
    required this.hostname,
    required this.internalAddress,
    required this.allocatableCpu,
    required this.allocatableMemory,
    required this.allocatablePods,
  });

  factory Node.fromJson(Map<String, dynamic> json) {
    print("json: ${json}");
    return Node(
      hostname: json['addresses']['Hostname'],
      internalAddress: json['addresses']['internal'],
      allocatableCpu: json['allocatable']['cpu'],
      allocatableMemory: json['allocatable']['memory'],
      allocatablePods: json['allocatable']['pods'],
    );
  }
}
