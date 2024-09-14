import 'dart:async';

import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class VmResourceMonitor extends StatefulWidget {
  @override
  _VmResourceMonitorState createState() => _VmResourceMonitorState();
}

class _VmResourceMonitorState extends State<VmResourceMonitor> {
  Timer? _timer;
  List<double> _cpuUsageHistory = [];
  List<double> _memoryUsageHistory = [];
  List<double> _storageUsageHistory = [];

  @override
  void initState() {
    super.initState();
    // Start fetching VM data periodically
    // Fetch data periodically
    Future.delayed(Duration(seconds: 5), _fetchCpuUsage);
    Future.delayed(Duration(seconds: 5), _fetchMemoryUsage);
  }

  // Example method to fetch the CPU data periodically
  void _fetchCpuUsage() async {
    // Fetch CPU usage here (using your Multipass functions)
    String cpuUsage = await MultipassCommands.info.getOrchestratorVmCPU();

    setState(() {
      _cpuUsageHistory.add(double.parse(cpuUsage));
      if (_cpuUsageHistory.length > 20) {
        _cpuUsageHistory.removeAt(0); // Maintain only last 20 data points
      }
    });
  }

  // Repeat for memory and disk usage fetching
  void _fetchMemoryUsage() async {
    // Fetch memory usage
    String memoryUsage = await MultipassCommands.info.getOrchestratorVmMemory();

    setState(() {
      _memoryUsageHistory
          .add(double.parse(memoryUsage.split(' ')[0])); // Parse the value
      if (_memoryUsageHistory.length > 20) {
        _memoryUsageHistory.removeAt(0);
      }
    });
  }

  // Building chart data
  LineChartData _buildChartData(List<double> usageHistory) {
    return LineChartData(
      lineBarsData: [
        LineChartBarData(
          spots: List.generate(usageHistory.length, (index) {
            return FlSpot(index.toDouble(), usageHistory[index]);
          }),
          isCurved: true,
          color: Colors.blue,
          barWidth: 2,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("CPU Usage"),
        LineChart(_buildChartData(_cpuUsageHistory)),
        Text("Memory Usage"),
        LineChart(_buildChartData(_memoryUsageHistory)),
        Text("Storage Usage"),
        LineChart(_buildChartData(_storageUsageHistory)),
      ],
    );
  }
}
