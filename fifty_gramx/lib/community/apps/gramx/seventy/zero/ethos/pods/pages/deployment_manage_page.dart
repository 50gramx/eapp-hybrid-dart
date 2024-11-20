import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart'
    as cpb2;
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/services/collars/DC499999999EPME5000Capabilities.dart';
import 'package:flutter/material.dart';

class DC499999999EAIP1002 extends StatefulWidget {
  const DC499999999EAIP1002({
    Key? key,
    required this.domainId,
    required this.pageIdentifiers,
  }) : super(key: key);

  final String domainId;
  final Map<String, String> pageIdentifiers;

  @override
  _DC499999999EAIP1002State createState() => _DC499999999EAIP1002State();
}

class _DC499999999EAIP1002State extends State<DC499999999EAIP1002> {
  late String collar_id;
  late String deployment_id;
  cpb2.Deployment deployment = cpb2.Deployment();

  updateDeployment() async {
    print("updateDeployment");
    var d =
        await DC499999999EPME5000Capabilities.get(widget.domainId, collar_id);
    setState(() {
      deployment = d;
    });
    print("updateDeployment: deployment, ${deployment.metadata}");
  }

  @override
  void initState() {
    super.initState();
    collar_id = widget.pageIdentifiers['collar_id']!;
    deployment_id = widget.pageIdentifiers['deployment_id']!;
    updateDeployment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPrimary(context),
        title: Text('Deployments in Domain: ${widget.domainId}'),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Deployment Metadata Section
            _buildSectionHeader('Deployment Metadata'),
            _buildMetadataCard(deployment.metadata),

            // Pod Template Section
            _buildSectionHeader('Pod Template & Containers'),
            ..._buildPodTemplate(deployment.podTemplate),

            // Replica Config Section
            _buildSectionHeader('Replica Configuration'),
            _buildReplicaConfig(deployment.replicaConfig),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildMetadataCard(cpb2.DeploymentMetadata metadata) {
    print("_buildMetadataCard: ${metadata}");
    return Card(
      elevation: 3.0,
      child: ListTile(
        title: Text(metadata.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Namespace: ${metadata.namespace}'),
            Text('Deployment ID: ${metadata.deploymentId}'),
            Text('Labels:', style: TextStyle(fontWeight: FontWeight.bold)),
            ...metadata.labels.entries.map((entry) {
              return Text('${entry.key}: ${entry.value}');
            }).toList(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPodTemplate(cpb2.PodTemplate podTemplate) {
    List<cpb2.Container> containers = podTemplate.containers;
    return containers.map((container) {
      return Card(
        elevation: 3.0,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: ExpansionTile(
          title: Text(container.name),
          subtitle: Text('Image: ${container.image}'),
          children: [
            ListTile(
              title: const Text('Ports'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: container.ports.map((port) {
                  return Text(
                    'Name: ${port.name}, Port: ${port.containerPort}, Protocol: ${port.protocol}',
                  );
                }).toList(),
              ),
            ),
            ListTile(
              title: const Text('Environment Variables'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: container.envVars.map((envVar) {
                  return Text(
                    '${envVar.name} = ${envVar.value}',
                  );
                }).toList(),
              ),
            ),
            ListTile(
              title: const Text('Resource Requests'),
              subtitle: Text(
                'CPU: ${container.resourceRequests.cpu}, Memory: ${container.resourceRequests.memory}',
              ),
            ),
            ListTile(
              title: const Text('Resource Limits'),
              subtitle: Text(
                'CPU: ${container.resourceLimits.cpu}, Memory: ${container.resourceLimits.memory}',
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  Widget _buildReplicaConfig(cpb2.ReplicaConfig replicaConfig) {
    return Card(
      elevation: 3.0,
      child: ListTile(
        title: const Text('Replica Information'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Replicas: ${replicaConfig.replicas}'),
            Text('Strategy: ${replicaConfig.strategy}'),
            Text('Min Ready Seconds: ${replicaConfig.minReadySeconds}'),
          ],
        ),
      ),
    );
  }
}
