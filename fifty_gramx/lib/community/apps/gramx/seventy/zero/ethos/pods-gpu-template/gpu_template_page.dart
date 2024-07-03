import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';

class GPUTemplatePage extends StatefulWidget {
  @override
  _GPUTemplatePageState createState() => _GPUTemplatePageState();
}

class _GPUTemplatePageState extends State<GPUTemplatePage> {
  String selectedGPU = 'RTX 3080Ti';
  int selectedQuantity = 1;
  String selectedImageTemplate = 'Alpine';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GPUs Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: DropdownButtonFormField<String>(
                    value: selectedGPU,
                    onChanged: (newValue) {
                      setState(() {
                        selectedGPU = newValue!;
                      });
                    },
                    items: <String>['RTX 3080Ti', 'RTX 3060Ti']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'GPU Type',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: DropdownButtonFormField<int>(
                    value: selectedQuantity,
                    onChanged: (newValue) {
                      setState(() {
                        selectedQuantity = newValue!;
                      });
                    },
                    items: <int>[1, 2].map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Quantity',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: DropdownButtonFormField<String>(
                    value: selectedImageTemplate,
                    onChanged: (newValue) {
                      setState(() {
                        selectedImageTemplate = newValue!;
                      });
                    },
                    items: <String>['Alpine', 'Ubuntu']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Image Template',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Add your deployment logic here
                EthosAppFlowBob().loadAppOnTheGo(
                    appName: "pods-gpu-cli",
                    orgName: "ethos",
                    communityCode: 70,
                    appIndex: 70093);
                NotificationsBloc.instance.newNotification(LocalNotification(
                    "EthosAppFlowBob",
                    {"subType": "Open eApp", "appSectionIndex": 4}));
              },
              child: Text('Deploy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
