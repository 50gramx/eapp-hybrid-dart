import 'dart:ui';

import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart'
    as DC499999999_pb;
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Template {
  final String name;
  final String description;
  final DC499999999_pb.Deployment deployment;

  Template(
      {required this.name,
      required this.description,
      required this.deployment});
}

// Define a list of available templates
final List<Template> availableTemplates = [
  Template(
      name: "Podeage Ubuntu",
      description: "podeage/ubuntu:latest",
      deployment: DC499999999_pb.Deployment(
        metadata: DC499999999_pb.DeploymentMetadata(
          name: "jupyter-notebook-2",
          namespace: "default",
          labels: {"app": "jupyter"},
          annotations: {"description": "Jupyter Notebook Deployment"},
        ),
        replicaConfig: DC499999999_pb.ReplicaConfig(
          replicas: 1,
          strategy: "RollingUpdate",
          minReadySeconds: 10,
        ),
        networkingConfig: DC499999999_pb.NetworkingConfig(
          hostNetwork: false,
          dnsPolicy: "ClusterFirst",
          serviceAccountName: "default",
        ),
        selector: DC499999999_pb.LabelSelector(
          matchLabels: {"app": "jupyter"},
        ),
        podTemplate: DC499999999_pb.PodTemplate(
          labels: {"app": "jupyter"},
          annotations: {"description": "Jupyter Notebook Pod Template"},
          containers: [
            DC499999999_pb.Container(
              name: "jupyter-container",
              image: "jupyter/minimal-notebook",
              resourceRequests:
                  DC499999999_pb.ResourceRequests(cpu: "500m", memory: "512Mi"),
              resourceLimits:
                  DC499999999_pb.ResourceLimits(cpu: "500m", memory: "512Mi"),
              ports: [
                DC499999999_pb.ContainerPort(
                    name: "http", containerPort: 8888, protocol: "TCP"),
              ],
              envVars: [
                DC499999999_pb.EnvVar(
                    name: "JUPYTER_TOKEN", value: "your_token_here"),
              ],
            ),
          ],
        ),
      )),
  Template(
      name: "Jupyter Notebook",
      description: "jupyter/minimal-notebook",
      deployment: DC499999999_pb.Deployment(
        metadata: DC499999999_pb.DeploymentMetadata(
          name: "jupyter-notebook-2",
          namespace: "default",
          labels: {"app": "jupyter"},
          annotations: {"description": "Jupyter Notebook Deployment"},
        ),
        replicaConfig: DC499999999_pb.ReplicaConfig(
          replicas: 1,
          strategy: "RollingUpdate",
          minReadySeconds: 10,
        ),
        networkingConfig: DC499999999_pb.NetworkingConfig(
          hostNetwork: false,
          dnsPolicy: "ClusterFirst",
          serviceAccountName: "default",
        ),
        selector: DC499999999_pb.LabelSelector(
          matchLabels: {"app": "jupyter"},
        ),
        podTemplate: DC499999999_pb.PodTemplate(
          labels: {"app": "jupyter"},
          annotations: {"description": "Jupyter Notebook Pod Template"},
          containers: [
            DC499999999_pb.Container(
              name: "jupyter-container",
              image: "jupyter/minimal-notebook",
              resourceRequests:
                  DC499999999_pb.ResourceRequests(cpu: "125m", memory: "256Mi"),
              resourceLimits:
                  DC499999999_pb.ResourceLimits(cpu: "500m", memory: "512Mi"),
              ports: [
                DC499999999_pb.ContainerPort(
                    name: "http", containerPort: 8888, protocol: "TCP"),
              ],
              envVars: [
                DC499999999_pb.EnvVar(
                    name: "JUPYTER_TOKEN", value: "your_token_here"),
              ],
            ),
          ],
        ),
      )),
  Template(
      name: "CentOS",
      description: "centos:latest",
      deployment: DC499999999_pb.Deployment(
        metadata: DC499999999_pb.DeploymentMetadata(
          name: "jupyter-notebook-2",
          namespace: "default",
          labels: {"app": "jupyter"},
          annotations: {"description": "Jupyter Notebook Deployment"},
        ),
        replicaConfig: DC499999999_pb.ReplicaConfig(
          replicas: 1,
          strategy: "RollingUpdate",
          minReadySeconds: 10,
        ),
        networkingConfig: DC499999999_pb.NetworkingConfig(
          hostNetwork: false,
          dnsPolicy: "ClusterFirst",
          serviceAccountName: "default",
        ),
        selector: DC499999999_pb.LabelSelector(
          matchLabels: {"app": "jupyter"},
        ),
        podTemplate: DC499999999_pb.PodTemplate(
          labels: {"app": "jupyter"},
          annotations: {"description": "Jupyter Notebook Pod Template"},
          containers: [
            DC499999999_pb.Container(
              name: "jupyter-container",
              image: "jupyter/minimal-notebook",
              resourceRequests:
                  DC499999999_pb.ResourceRequests(cpu: "500m", memory: "512Mi"),
              resourceLimits:
                  DC499999999_pb.ResourceLimits(cpu: "500m", memory: "512Mi"),
              ports: [
                DC499999999_pb.ContainerPort(
                    name: "http", containerPort: 8888, protocol: "TCP"),
              ],
              envVars: [
                DC499999999_pb.EnvVar(
                    name: "JUPYTER_TOKEN", value: "your_token_here"),
              ],
            ),
          ],
        ),
      )),
];

class DeploymentConfigurationWidget extends StatefulWidget {
  final String podName;
  final Function(DC499999999_pb.Deployment) changeTemplate;

  DeploymentConfigurationWidget(
      {required this.podName, required this.changeTemplate});

  @override
  _DeploymentConfigurationWidgetState createState() =>
      _DeploymentConfigurationWidgetState();
}

class _DeploymentConfigurationWidgetState
    extends State<DeploymentConfigurationWidget> {
  DC499999999_pb.Deployment deployment = DC499999999_pb.Deployment()
    ..podTemplate = (DC499999999_pb.PodTemplate(containers: [
      DC499999999_pb.Container(image: ""),
    ]));
  Template _selectedTemplate = availableTemplates[0];

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: -6,
        disableDepth: true,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        border: NeumorphicBorder(
          isEnabled: false,
          color: AppColors.backgroundTertiary(context),
          width: 1,
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            initialValue: widget.podName,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide:
                      BorderSide(color: AppColors.contentPrimary(context))),
              labelText: "Pod Name",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide:
                      BorderSide(color: AppColors.backgroundTertiary(context))),
              labelStyle: TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w300,
                color: AppColors.contentTertiary(context),
              ),
            ),
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              color: AppColors.contentPrimary(context),
            ),
            onChanged: (value) {
              // Handle pod name change if needed
            },
          ),
          SizedBox(height: 16),
          Text(
            "Pod Template",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w300,
              color: AppColors.contentTertiary(context),
            ),
          ),
          SizedBox(height: 8),
          Neumorphic(
            style: NeumorphicStyle(
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                shape: NeumorphicShape.flat,
                depth: 2,
                disableDepth: true,
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.all(Radius.circular(24))),
                border: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.contentPrimary(context),
                  width: 2,
                ),
                color: AppColors.backgroundPrimary(context)),
            child: Container(
              child: ListTile(
                leading: Icon(
                  Icons.hexagon_rounded,
                  color: AppColors.contentPrimary(context),
                  size: 48,
                ),
                title: Text(
                  _selectedTemplate.name,
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    color: AppColors.contentPrimary(context),
                  ),
                ),
                subtitle: Text(_selectedTemplate.description,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      color: AppColors.contentPrimary(context),
                    )),
                trailing: NeumorphicButton(
                  style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      depth: 2,
                      disableDepth: false,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                      color: AppColors.backgroundSecondary(context)),
                  onPressed: () {
                    _showTemplateSelectionModal(context);
                  },
                  child: Text(
                    "Change Template",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      color: AppColors.contentSecondary(context),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showTemplateSelectionModal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Neumorphic(
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                  color: AppColors.backgroundPrimary(context),
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundPrimary(context),
                    width: 2,
                  ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.height * 0.7,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Select Template",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.contentPrimary(context),
                        ),
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: ListView.builder(
                          itemCount: availableTemplates.length,
                          itemBuilder: (context, index) {
                            final template = availableTemplates[index];
                            return ListTile(
                              title: Text(
                                template.name,
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.contentPrimary(context),
                                ),
                              ),
                              subtitle: Text(
                                template.description,
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.contentSecondary(context),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  _selectedTemplate = template;
                                });
                                widget.changeTemplate(
                                    _selectedTemplate.deployment);
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
