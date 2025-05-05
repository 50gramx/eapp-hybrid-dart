import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart'
    as cpb2;
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/services/collars/DC499999999EPME5000Capabilities.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

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
    var d =
        await DC499999999EPME5000Capabilities.get(widget.domainId, collar_id);
    setState(() {
      deployment = d;
    });
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
    // print("build: deployment: ${deployment}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPrimary(context),
        title: Text('DC499999999EAIP1002: Deployment ID: ${deployment_id}'),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Deployment Metadata Section
            _buildSectionHeader('Deployment Metadata'),
            _buildMetadataCard(deployment.metadata),

            // Status Section
            _buildSectionHeader('Deployment Status'),
            _buildStatusCard(deployment.status),

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
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: "Montserrat",
        ),
      ),
    );
  }

  Widget _buildStatusCard(cpb2.DeploymentStatus deploymentStatus) {
    print("_buildStatusCard: ${deploymentStatus}");
    return Neumorphic(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        disableDepth: true,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deployment ID: ${deploymentStatus.deploymentId}',
              style: TextStyle(
                fontFamily: "Montserrat",
              ),
            ),
            SizedBox(height: 8),
            Text('Replicas: ${deploymentStatus.replicas}',
                style: TextStyle(
                  fontFamily: "Montserrat",
                )),
            Text('Updated Replicas: ${deploymentStatus.updatedReplicas}',
                style: TextStyle(
                  fontFamily: "Montserrat",
                )),
            Text('Available Replicas: ${deploymentStatus.availableReplicas}',
                style: TextStyle(
                  fontFamily: "Montserrat",
                )),
            Text(
                'Unavailable Replicas: ${deploymentStatus.unavailableReplicas}',
                style: TextStyle(
                  fontFamily: "Montserrat",
                )),
            SizedBox(height: 16),
            Text(
              'Conditions:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80, // Constrain height of ListView.builder
              child: ListView.builder(
                itemCount: deploymentStatus.conditions.length,
                itemBuilder: (context, index) {
                  final condition = deploymentStatus.conditions[index];
                  return Neumorphic(
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      disableDepth: true,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.backgroundSecondary(context),
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Type on the left
                        Container(
                          width: 120,
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(condition.type,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Montserrat",
                                    color: AppColors.contentPrimary(context),
                                  )),
                              Text(
                                  "${DateTimeService().getHourMinuteWithMarker(condition.lastUpdateTime)}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Montserrat",
                                      color:
                                          AppColors.contentSecondary(context))),
                            ],
                          ),
                        ),

                        // Message on the right
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(condition.message,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Montserrat",
                                      color:
                                          AppColors.contentPrimary(context))),

                              // Labels for Last Update and Transition Times
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 4),
                                      Text(condition.reason,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Montserrat",
                                              color: AppColors.contentPrimary(
                                                  context))),
                                      SizedBox(height: 8),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 4),
                                      Text(
                                          "${DateTimeService().getHourMinuteWithMarker(condition.lastTransitionTime)}",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Montserrat",
                                              color: AppColors.contentSecondary(
                                                  context))),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetadataCard(cpb2.DeploymentMetadata metadata) {
    // print("_buildMetadataCard: metadata: ${metadata}");
    return Neumorphic(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        disableDepth: true,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              metadata.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
              ),
            ),
            const SizedBox(height: 8.0),
            Text('Namespace: ${metadata.namespace}'),
            Text('Deployment ID: ${metadata.deploymentId}'),
            const SizedBox(height: 8.0),
            Text('Labels:',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            ...metadata.labels.entries.map((entry) {
              return Text('${entry.key}: ${entry.value}');
            }).toList(),
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> _buildPodTemplate(cpb2.PodTemplate podTemplate) {
    return podTemplate.containers.map((container) {
      return Neumorphic(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          disableDepth: true,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundPrimary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundSecondary(context),
            width: 2,
          ),
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
          title: Text(
            container.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
            ),
          ),
          subtitle: Text('Image: ${container.image}'),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Endpoints:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Galaxy: 13.200.238.161'),
                  const SizedBox(height: 8.0),
                  const Text('Ports:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ...container.ports.map((port) {
                    return GestureDetector(
                      onTap: () {
                        _launchURL("http://13.200.238.161:${port.nodePort}");
                      },
                      child: Text(
                        'Name: ${port.name}, Port: ${port.containerPort}, Protocol: ${port.protocol}, Node Port: ${port.nodePort}',
                      ),
                    );
                  }).toList(),
                  const SizedBox(height: 8.0),
                  const Text('Environment Variables:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ...container.envVars.map((envVar) {
                    return Text('${envVar.name} = ${envVar.value}');
                  }).toList(),
                  const SizedBox(height: 8.0),
                  const Text('Resource Requests:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      'CPU: ${container.resourceRequests.cpu}, Memory: ${container.resourceRequests.memory}'),
                  const SizedBox(height: 8.0),
                  const Text('Resource Limits:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      'CPU: ${container.resourceLimits.cpu}, Memory: ${container.resourceLimits.memory}'),
                ],
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  Widget _buildReplicaConfig(cpb2.ReplicaConfig replicaConfig) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        disableDepth: true,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Replica Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
              ),
            ),
            const SizedBox(height: 8.0),
            Text('Replicas: ${replicaConfig.replicas}'),
            Text('Strategy: ${replicaConfig.strategy}'),
            Text('Min Ready Seconds: ${replicaConfig.minReadySeconds}'),
          ],
        ),
      ),
    );
  }
}
