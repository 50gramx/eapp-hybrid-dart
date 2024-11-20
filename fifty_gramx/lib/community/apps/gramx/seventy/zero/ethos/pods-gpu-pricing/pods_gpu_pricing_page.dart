import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
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
    bool status = await AccountData().isValid();
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
            childAspectRatio: 1.3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: gpuDetails.length,
          itemBuilder: (context, index) {
            final gpu = gpuDetails[index];
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

    final userName = nameParts.sublist(3, nameParts.length - 2).join('-');

    // The last two parts are the date and time strings
    final dateString = nameParts[nameParts.length - 2];
    final timeString = nameParts[nameParts.length - 1];

    // Reformat date and time
    final formattedDateTimeString = _reformatDateTime(dateString, timeString);
    DateTime dateTime;
    try {
      dateTime = DateTime.parse(formattedDateTimeString);
    } catch (e) {
      return Text('',
          style: TextStyle(
              fontSize: 16,
              color: AppColors.contentPrimary(context),
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat'));
    }

    final now = DateTime.now();
    final diff = now.difference(dateTime);
    final timeAgo = _formatTimeAgo(diff);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            '${countryCode.toString().toUpperCase()} - $region\nJoined: $timeAgo',
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
    final cpu = allocatable['cpu'] ?? 'N/A';
    final memory = _formatMemory(allocatable['memory']);
    final storage = _formatStorage(allocatable['ephemeral-storage']);

    final totalPods =
        allocatable['pods'] ?? 'N/A'; // Replace with your total pods count

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "🖥️ Specs",
          style: TextStyle(
            fontSize: 22,
            color: AppColors.contentSecondary(context),
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildSpecItem(Icons.memory_rounded, "$cpu vCPU", context),
            _buildSpecItem(Icons.sd_storage_rounded, "$memory RAM", context),
            _buildSpecItem(Icons.storage_rounded, "$storage Storage", context),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "$totalPods Pods Allocatable",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.contentPrimary(context),
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSpecItem(IconData icon, String value, BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: AppColors.contentPrimary(context)),
        SizedBox(width: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.contentPrimary(context),
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
          ),
        ),
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

  Widget _buildDeployButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ActionNeuButton(
        buttonActionOnPressed: () {
          AppFlowManager.instance.loadAppOnTheGo(
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
