import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:http/http.dart' as http;

class GPUDetailsColumn extends StatefulWidget {
  @override
  _GPUDetailsColumnState createState() => _GPUDetailsColumnState();
}

class _GPUDetailsColumnState extends State<GPUDetailsColumn> {
  bool signedIn = false;
  List<Map<String, dynamic>> gpuDetails = [];

  @override
  void initState() {
    super.initState();
    _checkSignInStatus();
    _fetchGpuDetails();
  }

  Future<void> _checkSignInStatus() async {
    bool status = await AccountData().accountAvailable();
    // if (status) {
    //   NotificationsBloc.instance.newNotification(LocalNotification(
    //       "EthosAppFlowBob", {"subType": "AccountSign", "status": true}));
    // }
    setState(() {
      signedIn = status;
    });
  }

  Future<void> _fetchGpuDetails() async {
    try {
      final response = await http.get(
        Uri.parse('https://causal-regular-ladybug.ngrok-free.app/get_nodes'),
        headers: {'ngrok-skip-browser-warning': '69420'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          gpuDetails = List<Map<String, dynamic>>.from(data['nodes']);
        });
      } else {
        // Handle error response
        print('Failed to load GPU details: ${response.statusCode}');
      }
    } catch (error) {
      // Handle network error
      print('Error fetching GPU details: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = 1;
        if (constraints.maxWidth > 600) crossAxisCount = 2;
        if (constraints.maxWidth > 1200) crossAxisCount = 3;

        return GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: gpuDetails.length,
          itemBuilder: (context, index) {
            final gpu = gpuDetails[index];
            print("nodeDetails: ${gpu}");
            return NodeCard(nodeData: gpu, isSignedIn: signedIn);
          },
        );
      },
    );
  }
}

class NodeCard extends StatelessWidget {
  final Map<String, dynamic> nodeData;
  final bool isSignedIn;

  NodeCard({required this.nodeData, required this.isSignedIn});

  @override
  Widget build(BuildContext context) {
    if (!nodeData['name'].toString().contains("enode")) {
      return SizedBox();
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 300;

        return Neumorphic(
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
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.backgroundPrimary(context),
          ),
          child: Padding(
            padding: EdgeInsets.all(isSmallScreen ? 10 : 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        _buildSpecs(context),
                        SizedBox(height: 10),
                        _buildUsageStats(context),
                        SizedBox(height: 10),
                        _buildNodeInfo(context),
                        SizedBox(height: 10),
                        _buildCustomLabels(context),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                _buildDeployButton(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    final nameParts = nodeData['name'].split('-');
    if (nameParts.length < 6) {
      return Text('Invalid node name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
    }

    final countryCode = nameParts[
        1]; // Adjusted index based on format 'enode-in-<countryCode>-<region>-<userName>-<date>-<time>'
    final region = nameParts[2];
    final userName = nameParts[3];
    final dateString = nameParts[4];
    final timeString = nameParts[5];

    // Reformat date and time
    final formattedDateTimeString = _reformatDateTime(dateString, timeString);
    DateTime dateTime;
    try {
      dateTime = DateTime.parse(formattedDateTimeString);
    } catch (e) {
      return Text('Invalid date format',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
    }

    final now = DateTime.now();
    final diff = now.difference(dateTime);
    final timeAgo = _formatTimeAgo(diff);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            '$countryCode - $region\nUser: $userName\nJoined: $timeAgo',
            style: TextStyle(
                fontSize: 16,
                color: AppColors.contentPrimary(context),
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat'),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        _buildStatusBadge(nodeData['status'] == 'True', context),
      ],
    );
  }

  Widget _buildStatusBadge(bool isReady, BuildContext context) {
    return NeumorphicButton(
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
        depth: 2,
        intensity: 0.7,
        boxShape: NeumorphicBoxShape.stadium(),
        color: isReady
            ? AppColors.contentPositive(context)
            : AppColors.warning(context),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(
        isReady ? "READY" : "NOT READY",
        style: TextStyle(
            fontSize: 12,
            color: AppColors.contentPrimary(context),
            fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat'),
      ),
      onPressed: () {},
    );
  }

  Widget _buildSpecs(BuildContext context) {
    final allocatable = nodeData['allocatable'] as Map<String, dynamic>? ?? {};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("🚀 Specs",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.contentSecondary(context),
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat')),
        SizedBox(height: 5),
        _buildResourceInfo(
            Icons.memory, "CPU", "${allocatable['cpu'] ?? 'N/A'}", context),
        _buildResourceInfo(Icons.sd_storage, "RAM",
            _formatMemory(allocatable['memory']), context),
        _buildResourceInfo(Icons.storage, "Storage",
            _formatStorage(allocatable['ephemeral-storage']), context),
        _buildResourceInfo(Icons.bug_report, "Pods",
            "${allocatable['pods'] ?? 'N/A'}", context),
      ],
    );
  }

  Widget _buildUsageStats(BuildContext context) {
    final allocatable = nodeData['allocatable'] as Map<String, dynamic>? ?? {};
    final capacity = nodeData['capacity'] as Map<String, dynamic>? ?? {};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("📊 Usage",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.contentPrimary(context),
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat')),
        SizedBox(height: 5),
        _buildProgressBar("CPU",
            _calculateUsage(allocatable['cpu'], capacity['cpu']), context),
        _buildProgressBar(
            "Memory",
            _calculateUsage(allocatable['memory'], capacity['memory']),
            context),
        _buildProgressBar(
            "Storage",
            _calculateUsage(allocatable['ephemeral-storage'],
                capacity['ephemeral-storage']),
            context),
      ],
    );
  }

  Widget _buildNodeInfo(BuildContext context) {
    final nodeInfo = nodeData['node_info'] as Map<String, dynamic>? ?? {};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("🖥️ Details",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.contentPrimary(context),
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat')),
        SizedBox(height: 5),
        _buildInfoItem(
            "OS",
            "${nodeInfo['osImage'] ?? 'Unknown'} (${nodeInfo['architecture'] ?? 'Unknown'})",
            context),
        _buildInfoItem(
            "Kernel", nodeInfo['kernelVersion'] ?? 'Unknown', context),
        _buildInfoItem("Runtime",
            nodeInfo['containerRuntimeVersion'] ?? 'Unknown', context),
        _buildInfoItem(
            "Kubelet", nodeInfo['kubeletVersion'] ?? 'Unknown', context),
      ],
    );
  }

  Widget _buildCustomLabels(BuildContext context) {
    final labels = nodeData['labels'] as Map<String, dynamic>? ?? {};
    final customLabels = labels.entries
        .where((entry) =>
            !entry.key.startsWith('kubernetes.io/') &&
            !entry.key.startsWith('beta.kubernetes.io/') &&
            !entry.key.startsWith('node.kubernetes.io/'))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("🏷️ Labels",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.contentPrimary(context),
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat')),
        SizedBox(height: 5),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: customLabels
              .map((entry) =>
                  _buildLabelChip(entry.key, entry.value.toString(), context))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildDeployButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ActionNeuButton(
        buttonActionOnPressed: () {
          EthosAppFlowBob().loadAppOnTheGo(
              appName: "get_started",
              orgName: "ethos",
              communityCode: 50,
              appIndex: 5002);
          NotificationsBloc.instance.newNotification(LocalNotification(
              "EthosAppFlowBob",
              {"subType": "Open eApp", "appSectionIndex": 1}));
        },
        buttonTitle: isSignedIn ? '🚀 Deploy now' : '🔒 Sign in to deploy',
        isPrimaryButton: true,
      ),
    );
  }

  Widget _buildResourceInfo(
      IconData icon, String label, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(icon, size: 16),
          SizedBox(width: 5),
          Text(label,
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.contentPrimary(context),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat')),
          Spacer(),
          Text(value,
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.contentPrimary(context),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat')),
        ],
      ),
    );
  }

  Widget _buildProgressBar(
      String label, double percentage, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(
                fontSize: 12,
                color: AppColors.contentPrimary(context),
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat')),
        SizedBox(height: 2),
        NeumorphicProgress(
          percent: percentage,
          height: 10,
          style: ProgressStyle(
            depth: 2,
            accent: Colors.blue,
            variant: Colors.grey,
          ),
        ),
        SizedBox(height: 2),
        Text("${(percentage * 100).toStringAsFixed(1)}% Used",
            style: TextStyle(
                fontSize: 10,
                color: AppColors.contentPrimary(context),
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat')),
      ],
    );
  }

  Widget _buildInfoItem(String label, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label: ",
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.contentPrimary(context),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat')),
          Expanded(child: Text(value, style: TextStyle(fontSize: 12))),
        ],
      ),
    );
  }

  Widget _buildLabelChip(String key, String value, BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 2,
        intensity: 0.5,
        boxShape: NeumorphicBoxShape.stadium(),
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      child: Text(
        "$key: $value",
        style: TextStyle(
            fontSize: 10,
            color: AppColors.contentPrimary(context),
            fontWeight: FontWeight.w300,
            fontFamily: 'Montserrat'),
      ),
    );
  }

  String _formatMemory(dynamic memory) {
    if (memory == null) return 'N/A';
    int memoryKi = int.tryParse(memory.toString().replaceAll('Ki', '')) ?? 0;
    return "${(memoryKi / 1024 / 1024).toStringAsFixed(2)} GB";
  }

  String _formatStorage(dynamic storage) {
    if (storage == null) return 'N/A';
    int storageKi = int.tryParse(storage.toString().replaceAll('Ki', '')) ?? 0;
    return "${(storageKi / 1024 / 1024).toStringAsFixed(2)} GB";
  }

  double _calculateUsage(dynamic allocatable, dynamic capacity) {
    if (allocatable == null || capacity == null) return 0.0;
    int allocatableValue = int.tryParse(
            allocatable.toString().replaceAll(RegExp(r'[^0-9]'), '')) ??
        0;
    int capacityValue =
        int.tryParse(capacity.toString().replaceAll(RegExp(r'[^0-9]'), '')) ??
            1;
    return 1 - (allocatableValue / capacityValue).clamp(0.0, 1.0);
  }

// Function to reformat date and time into ISO 8601 format
  String _reformatDateTime(String date, String time) {
    final month = _monthFromString(date.substring(4, 7)); // 'sep' -> '09'
    final day = date.substring(7, 9); // '14'
    final year = date.substring(0, 4); // '2024'

    final hour = time.substring(0, 2); // '04'
    final minute = time.substring(3, 5); // '39'
    final second = time.substring(6, 8); // '25'

    // Return in ISO 8601 format
    return '$year-$month-${day}T${hour}:$minute:$second';
  }

  // Helper function to convert month abbreviation to month number
  String _monthFromString(String month) {
    const months = {
      'jan': '01',
      'feb': '02',
      'mar': '03',
      'apr': '04',
      'may': '05',
      'jun': '06',
      'jul': '07',
      'aug': '08',
      'sep': '09',
      'oct': '10',
      'nov': '11',
      'dec': '12',
    };
    return months[month.toLowerCase()] ?? '01'; // Default to '01' if not found
  }

  String _formatTimeAgo(Duration duration) {
    if (duration.inDays > 0) return '${duration.inDays} days ago';
    if (duration.inHours > 0) return '${duration.inHours} hours ago';
    if (duration.inMinutes > 0) return '${duration.inMinutes} minutes ago';
    return '${duration.inSeconds} seconds ago';
  }
}
