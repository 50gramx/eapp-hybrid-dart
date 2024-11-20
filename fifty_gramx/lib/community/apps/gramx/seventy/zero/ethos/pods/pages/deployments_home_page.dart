import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/services/collars/DC499999999EPME5000Capabilities.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:flutter/material.dart';

class DC499999999EAIP1001 extends StatefulWidget {
  const DC499999999EAIP1001({
    Key? key,
    required this.domainId,
  }) : super(key: key);

  final String domainId;

  @override
  _DC499999999EAIP1001State createState() => _DC499999999EAIP1001State();
}

class _DC499999999EAIP1001State extends State<DC499999999EAIP1001> {
  List<DC499999999> deployment_collars = [];

  Future<List<DC499999999>> updateCollars() async {
    print("updateCollars");
    deployment_collars =
        await DC499999999EPME5000Capabilities.list(widget.domainId);
    print("updateCollars: deployment_collars, ${deployment_collars.length}");
    return deployment_collars;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPrimary(context),
        title: Text('Deployments in Domain: ${widget.domainId}'),
        actions: [],
      ),
      body: FutureBuilder<List<DC499999999>>(
        future: updateCollars(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || deployment_collars.isEmpty) {
            return const Center(child: Text('No deployments found.'));
          } else {
            return ListView.builder(
              itemCount: deployment_collars.length,
              itemBuilder: (context, index) {
                final deployment = deployment_collars[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // Navigate to a detailed page for the deployment
                      AppFlowManager.instance.loadAppOnTheGo(
                          appName: "pods",
                          orgName: "ethos",
                          communityCode: 70,
                          appIndex: 0,
                          collarNameCode: "DC499999999",
                          pageNameCode: "EAIP1002",
                          domainIdentifier: widget.domainId,
                          pageIdentifiers: {
                            "collar_id": "${deployment.id}",
                            "deployment_id": "${deployment.deployment.id}",
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Deployment Name
                          Text(
                            deployment.name,
                            style: const TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8.0),

                          // Namespace and Status
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  'Name: ${deployment.deployment.metadata.name}'),
                              Text(
                                  'Status: ${DateTimeService().getFormattedTimeOrDate(deployment.updatedAt)}'),
                            ],
                          ),
                          const SizedBox(height: 8.0),

                          // Replica Information
                          Text(
                              'Replicas: ${deployment.deployment.replicaConfig.replicas}'),
                          const SizedBox(height: 8.0),

                          // Resource Requests Summary
                          if (deployment.deployment.podTemplate.containers[0]
                                  .resourceRequests !=
                              null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Resources:',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                    'CPU: ${deployment.deployment.podTemplate.containers[0].resourceRequests.cpu}'),
                                Text(
                                    'Memory: ${deployment.deployment.podTemplate.containers[0].resourceRequests.memory}'),
                              ],
                            ),

                          // Divider for Visual Separation
                          const Divider(height: 16.0, thickness: 1.0),

                          // Button to View More Details
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('View Details'),
                            ),
                          ),
                        ],
                      ),
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
