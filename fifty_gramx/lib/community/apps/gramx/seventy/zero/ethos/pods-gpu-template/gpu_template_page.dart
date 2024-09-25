import 'dart:convert';
import 'dart:math';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
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

  List<Map<String, dynamic>> containerPorts = [
    {'name': 'user-defined', 'port': 80}
  ];
  List<Map<String, dynamic>> envVariables = [];

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
        'linuxserver'
      ]; // Sample publishers
    });
  }

  Future<void> fetchAvailableImages(String publisher) async {
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

  Future<void> deployPod() async {
    final apiUrl = 'https://causal-regular-ladybug.ngrok-free.app/create_pod';

    final Map<String, dynamic> podData = {
      'name': podName,
      'image': selectedImage ?? 'alpine:latest',
      'container_ports': containerPorts.map((port) => port['port']).toList(),
      'env': envVariables
    };

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launch Pod'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pod Name:'),
              TextFormField(
                initialValue: podName,
                onChanged: (value) {
                  podName = value;
                },
              ),
              SizedBox(height: 16),
              Text('Image Template:'),
              DropdownButtonFormField<String>(
                value: selectedImageTemplate,
                onChanged: (newValue) {
                  setState(() {
                    selectedImageTemplate = newValue!;
                    selectedPublisher = null;
                    selectedImage = null;
                    availableImages.clear();
                    filteredImages.clear();
                  });
                  fetchAvailableImages(selectedImageTemplate);
                },
                items: <String>['Docker Hub', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              if (selectedImageTemplate == 'Docker Hub') ...[
                DropdownButtonFormField<String>(
                  hint: Text('Select Publisher'),
                  value: selectedPublisher,
                  onChanged: (newValue) {
                    setState(() {
                      selectedPublisher = newValue;
                      fetchAvailableImages(newValue!);
                      selectedImage = null; // Reset image selection
                    });
                  },
                  items: imagePublishers
                      .map<DropdownMenuItem<String>>((String publisher) {
                    return DropdownMenuItem<String>(
                      value: publisher,
                      child: Text(publisher),
                    );
                  }).toList(),
                ),
                if (isLoading)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(child: CircularProgressIndicator()),
                  )
                else ...[
                  DropdownSearch<String>(
                    items: (f, s) async {
                      // Fetch images asynchronously
                      // Replace this with your API call
                      return filteredImages;
                    },
                    onChanged: (value) {
                      setState(() {
                        selectedImage = value;
                      });
                    },
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      itemBuilder: (context, item, isDisabled, isSelected) {
                        return ListTile(title: Text(item));
                      },
                    ),
                    selectedItem: selectedImage,
                    dropdownBuilder: (context, selectedItem) {
                      return ListTile(
                        title: Text(selectedItem ?? 'Select an image'),
                      );
                    },
                  ),
                ],
              ],
              SizedBox(height: 32),
              Text('Container Ports:'),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: containerPorts.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Port Name'),
                          initialValue: containerPorts[index]['name'],
                          onChanged: (value) {
                            containerPorts[index]['name'] = value;
                          },
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Port Number'),
                          initialValue:
                              containerPorts[index]['port'].toString(),
                          onChanged: (value) {
                            containerPorts[index]['port'] =
                                int.tryParse(value) ?? 0;
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () => removeContainerPort(index),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: addContainerPort,
                child: Text('Add Port'),
              ),
              SizedBox(height: 32),
              Text('Environment Variables:'),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: envVariables.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Name'),
                          initialValue: envVariables[index]['name'],
                          onChanged: (value) {
                            envVariables[index]['name'] = value;
                          },
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Value'),
                          initialValue: envVariables[index]['value'],
                          onChanged: (value) {
                            envVariables[index]['value'] = value;
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () => removeEnvVariable(index),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print("envVariables: $envVariables");
                  addEnvVariable();
                },
                child: Text('Add Environment Variable'),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: deployPod,
                child: Text('Deploy Pod'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
