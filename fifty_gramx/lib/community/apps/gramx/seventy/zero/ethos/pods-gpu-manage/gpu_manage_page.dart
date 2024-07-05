import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
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
    return Pod(
      name: json['name'],
      namespace: json['namespace'],
      nodeName: json['node_name'],
      sshCommand: json['ssh_command'],
      status: json['status'],
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
    print("PodListPage: fetchPods");
    try {
      final response =
          await http.get(Uri.parse('http://122.179.17.86:8000/get_pods'));

      print("PodListPage: response status code: ${response.statusCode}");
      print("PodListPage: response body: ${response.body}");

      if (response.statusCode == 200) {
        List<dynamic> podsJson = json.decode(response.body)['pods'];
        List<Pod> pods = podsJson.map((json) => Pod.fromJson(json)).toList();
        return pods;
      } else {
        throw Exception('Failed to load pods: ${response.reasonPhrase}');
      }
    } catch (e) {
      print("PodListPage: error fetching pods: $e");
      throw Exception('Failed to load pods: $e');
    }
  }

  @override
  void initState() {
    print("PodListPage: init");
    super.initState();
    pods = fetchPods();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pods'),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                // Add your deployment logic here
                                EthosAppFlowBob().loadAppOnTheGo(
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
