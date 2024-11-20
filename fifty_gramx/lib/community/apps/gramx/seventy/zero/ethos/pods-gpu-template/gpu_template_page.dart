import 'dart:convert';
import 'dart:math';

import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart'
    as DC499999999_pb;
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-template/deployment_configuration_widget.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-template/deployment_summary_widget.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-template/instance_selection_widget.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-template/instance_type_widget.dart';
import 'package:fifty_gramx/services/product/service/domain/createSpaceServiceDomainService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:http/http.dart' as http;

class PodCreationPage extends StatefulWidget {
  @override
  _GPUTemplatePageState createState() => _GPUTemplatePageState();
}

class _GPUTemplatePageState extends State<PodCreationPage> {
  String podName = '';
  String selectedImageTemplate = 'Docker Hub';
  List<String> imagePublishers = [];
  List<String> availableImages = [];
  List<String> filteredImages = [];
  String? selectedPublisher;
  String? selectedImage;
  bool isLoading = false;
  String searchQuery = '';
  InstanceOption selectedInstance = InstanceOption(
      price: "0",
      ram: "0",
      vcpus: "0",
      storage: "0",
      resourceLimits: DC499999999_pb.ResourceLimits(
          cpu: "", memory: "")); // New variable to track instance selection

  List<Map<String, dynamic>> containerPorts = [
    {'name': 'user-defined', 'port': 80}
  ];
  List<Map<String, dynamic>> envVariables = [];

  DC499999999_pb.Deployment selectedDeployment = DC499999999_pb.Deployment();

  String enteredPublisherName = '';

  String generateRandomPodName() {
    final random = Random();
    const characters = 'abcdefghijklmnopqrstuvwxyz';
    return 'pod-' +
        List.generate(
            5, (index) => characters[random.nextInt(characters.length)]).join();
  }

  @override
  void initState() {
    super.initState();
    podName = generateRandomPodName();
    fetchImagePublishers();
  }

  Future<void> fetchImagePublishers() async {
    setState(() {
      imagePublishers = [
        'Official',
        'NVIDIA',
        'OpenAI',
        'linuxserver',
      ]; // Sample publishers
    });
  }

  Future<void> fetchAvailableImages(String publisher) async {
    print("fetchAvailableImages called");
    setState(() {
      isLoading = true;
    });

    if (publisher == 'Official') {
      List<String> allImages = [];
      String? nextUrl = 'https://hub.docker.com/v2/repositories/library/';

      try {
        while (nextUrl != null) {
          final response = await http.get(Uri.parse(nextUrl));
          if (response.statusCode == 200) {
            final data = json.decode(response.body);
            allImages.addAll((data['results'] as List)
                .map<String>((image) => image['name'] as String));
            nextUrl = data['next'];
          } else {
            break;
          }
        }
        setState(() {
          availableImages = allImages;
          filteredImages = allImages;
        });
      } catch (e) {
        setState(() {
          availableImages = [];
          filteredImages = [];
        });
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    } else if (publisher == 'Others') {
      print("publisher is Other");
      List<String> allImages = [];
      String? nextUrl =
          'https://hub.docker.com/v2/repositories/$enteredPublisherName/';
      // Fetch images from the custom publisher

      try {
        print("will try fetch");
        while (nextUrl != null) {
          final response = await http.get(Uri.parse(nextUrl));

          if (response.statusCode == 200) {
            final data = json.decode(response.body);
            allImages.addAll((data['results'] as List)
                .map<String>((image) => image['name'] as String));
            nextUrl = data['next'];
          } else {
            break;
          }
        }
        if (allImages.isEmpty) {
          _showSnackBar('No images found for $enteredPublisherName.');
        } else {
          setState(() {
            availableImages = allImages;
            filteredImages = allImages;
          });
        }
      } catch (e) {
        _showSnackBar('Error: Could not connect to the server.');
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    } else {
      setState(() {
        if (publisher == 'NVIDIA') {
          availableImages = ['nvidia/cuda:latest'];
        } else if (publisher == 'linuxserver') {
          availableImages = ['linuxserver/openssh-server'];
        } else {
          availableImages = ['openai/whisper:latest'];
        }
        filteredImages = availableImages;
        isLoading = false;
      });
    }
  }

  startDeployment() async {
    setState(() {
      selectedDeployment
        ..podTemplate.containers.first.resourceLimits =
            selectedInstance.resourceLimits;
      selectedDeployment..metadata.name = podName;
    });
    print("startDeployment: ${selectedDeployment}");
    var response = await CreateSpaceServiceDomainService
        .createDC499999999SpaceServiceDomain(
            "name", "description", false, selectedDeployment);
    print("callCreateService: $response");
  }

  Future<void> deployPod() async {
    final apiUrl = 'https://causal-regular-ladybug.ngrok-free.app/create_pod';

// Use the publisher only if it's provided; otherwise, use the image name directly
    String image = '';

    if (selectedPublisher != null && enteredPublisherName != '') {
      image = "${enteredPublisherName}/${selectedImage}";
    } else {
      image = selectedImage ?? "alpine:latest";
    }

    final Map<String, dynamic> podData = {
      'name': podName,
      'image': image,
      'container_ports': containerPorts.map((port) => port['port']).toList(),
      'env': envVariables
    };

    print("podData: $podData");

    try {
      print("requestBody: ${json.encode(podData)}");
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(podData),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("responseData: ${responseData}");
        _showSnackBar('Success: ${responseData['message']}');
      } else {
        final errorData = json.decode(response.body);
        print("Error: ${errorData}");
        _showSnackBar('Error: ${errorData['error']}');
      }
    } catch (e) {
      _showSnackBar('Error: Could not connect to the server.');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void addContainerPort() {
    setState(() {
      containerPorts.add({'name': 'user-defined', 'port': 80});
    });
  }

  void removeContainerPort(int index) {
    setState(() {
      containerPorts.removeAt(index);
    });
  }

  void addEnvVariable() {
    setState(() {
      envVariables.add({'name': '', 'value': ''});
    });
  }

  void removeEnvVariable(int index) {
    setState(() {
      envVariables.removeAt(index);
    });
  }

  // Function to handle instance selection callback
  void onInstanceSelected(InstanceOption selected) {
    setState(() {
      selectedInstance = selected;
    });
  }

  changeTemplate(DC499999999_pb.Deployment deployment) {
    print("changeTemplate: ${deployment}");
    setState(() {
      selectedDeployment = deployment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              InstanceSelectionWidget(
                onInstanceSelected: onInstanceSelected,
              ),
              SizedBox(height: 32),
              if (selectedInstance.price !=
                  "0") // Show only if instance is selected
                DeploymentConfigurationWidget(
                  podName: podName,
                  changeTemplate: changeTemplate,
                ),
              SizedBox(height: 32),
              if (selectedInstance.price != "0")
                DeploymentSummaryRow(
                  pricingCpuCost: selectedInstance.price,
                  pricingDiskCost:
                      "₹${((int.parse(selectedInstance.storage) * 10) / 720).toStringAsFixed(2)}",
                  podName: podName,
                  podRamCpu:
                      "${selectedInstance.ram} GB RAM • ${selectedInstance.vcpus} vCPU",
                  podDisk: "${selectedInstance.storage} GB",
                ),
              SizedBox(height: 32),
              if (selectedInstance.price != "0")
                Center(
                  child: NeumorphicButton(
                    margin: EdgeInsets.symmetric(horizontal: 16),
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
                      color: AppColors.backgroundInversePrimary(context),
                    ),
                    onPressed: startDeployment,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Launch Pod",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              color: AppColors.contentInversePrimary(context),
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
