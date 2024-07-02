import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/AddContractParameterDialog.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/ContractParameterListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/EntityContractParameter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/GetAllCoreEntity.dart';
import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class AddEntityPage extends StatefulWidget {
  const AddEntityPage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<AddEntityPage> createState() => _AddEntityPageState();
}

class _AddEntityPageState extends State<AddEntityPage> {
  String entityName = '';
  String entityType = 'Message';
  String entityArt = '';
  String aboutEntity = '';
  List<EntityContractParameter> contractParameters = [];

  // Options for entity type
  final List<String> entityTypeOptions = ['Message', 'Enum'];

  // Method to handle submission of the entity creation form
  void submitEntity() {
    getAllEntity();
    // Implement logic to send the entity data to backend or handle as required
    print('Entity Name: $entityName');
    print('Entity Type: $entityType');
    print('Entity Art: $entityArt');
    print('About Entity: $aboutEntity');
    print("Contract Parameters:");
    for (var param in contractParameters) {
      print("  - Name: ${param.name}");
      print("    Type: ${param.type}");

      print("    Type: ${param.type}");
      // ... print other details if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Entity'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Entity Name'),
              onChanged: (value) {
                setState(() {
                  entityName = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Entity Type'),
              value: entityType,
              onChanged: (value) {
                setState(() {
                  entityType = value ?? "";
                });
              },
              items: entityTypeOptions
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Entity Art'),
              onChanged: (value) {
                setState(() {
                  entityArt = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'About Entity'),
              onChanged: (value) {
                setState(() {
                  aboutEntity = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Contract Parameters:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Open a dialog to add a new ContractParameter
                showDialog(
                  context: context,
                  builder: (context) => AddContractParameterDialog(
                    onAdd: (newParameter) {
                      setState(() {
                        contractParameters.add(newParameter);
                      });
                    },
                  ),
                );
              },
              child: Text('Add Parameter'),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: contractParameters.length,
              itemBuilder: (context, index) {
                return EntityContractParameterListItem(
                    parameter: contractParameters[index]);
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: submitEntity,
              child: Text('Create Entity'),
            ),
          ],
        ),
      ),
    );
  }
}
