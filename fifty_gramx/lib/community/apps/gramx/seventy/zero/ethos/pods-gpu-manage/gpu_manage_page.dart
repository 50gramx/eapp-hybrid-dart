import 'dart:convert';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Pod {
  final String name;
  final String namespace;
  final String nodeName;
  final String sshCommand;
  final String status;

  Pod({
    required this.name,
    required this.namespace,
    required this.nodeName,
    required this.sshCommand,
    required this.status,
  });

  factory Pod.fromJson(Map<String, dynamic> json) {
    var name = json.containsKey('name') ? json['name'] : "";
    if (name == null) name = "";
    var namespace = json.containsKey('namespace') ? json['namespace'] : "";
    if (namespace == null) namespace = "";
    var node_name = json.containsKey('node_name') ? json['node_name'] : "";
    if (node_name == null) node_name = "";
    var ssh_command =
        json.containsKey('ssh_command') ? json['ssh_command'] : "";
    if (ssh_command == null) ssh_command = "";
    var status = json.containsKey('status') ? json['status'] : "";
    if (status == null) status = "";
    return Pod(
      name: name,
      namespace: namespace,
      nodeName: node_name,
      sshCommand: ssh_command,
      status: status,
    );
  }
}

class PodListPage extends StatefulWidget {
  @override
  _PodListPageState createState() => _PodListPageState();
}

class _PodListPageState extends State<PodListPage> {
  late Future<List<Pod>> pods;

  Future<List<Pod>> fetchPods() async {
    try {
      final response = await http.get(
        Uri.parse('https://causal-regular-ladybug.ngrok-free.app/get_pods'),
        headers: {'ngrok-skip-browser-warning': '69420'},
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonBody = json.decode(response.body);
        List<dynamic> podsInJson = jsonBody['pods'];
        List<Pod> pods = podsInJson.map((json) => Pod.fromJson(json)).toList();
        return pods;
      } else {
        throw Exception('Failed to load pods: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Failed to load pods: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    pods = fetchPods();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pods'),
        actions: [
          ActionNeuButton(
              buttonTitle: "Fetch",
              buttonActionOnPressed: () {
                setState(() {
                  pods = fetchPods();
                });
              })
        ],
      ),
      body: FutureBuilder<List<Pod>>(
        future: pods,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No pods available'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final pod = snapshot.data![index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pod.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  pod.namespace,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  pod.status,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: pod.status == 'Running'
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                                Switch(
                                  value: pod.status == 'Running',
                                  onChanged: (value) {},
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Visibility(
                          visible: pod.status == 'Running',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  // Add your deployment logic here
                                  AppFlowManager.instance.loadAppOnTheGo(
                                      appName: "pods-gpu-cli",
                                      orgName: "ethos",
                                      communityCode: 70,
                                      appIndex: 70093);
                                  NotificationsBloc.instance.newNotification(
                                      LocalNotification("EthosAppFlowBob", {
                                    "subType": "Open eApp",
                                    "appSectionIndex": 5
                                  }));
                                },
                                child: Text(
                                  pod.sshCommand,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
