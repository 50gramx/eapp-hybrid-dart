import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/EntityContractParameter.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:protobuf/protobuf.dart';

class AddContractParameterDialog extends StatefulWidget {
  final Function(EntityContractParameter) onAdd;

  const AddContractParameterDialog({required this.onAdd, Key? key})
      : super(key: key);

  @override
  _AddContractParameterDialogState createState() =>
      _AddContractParameterDialogState();
}

class _AddContractParameterDialogState
    extends State<AddContractParameterDialog> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _exampleController = TextEditingController();

  String _generateSnakeCase(String name) => name
      .replaceAllMapped(RegExp(r'[A-Z]'),
          (Match match) => '_${match.group(0)!.toLowerCase()}')
      .toLowerCase();

  String _generateCamelCase(String name) {
    var words = name.split(" ");
    return words
        .map((word) =>
            word.substring(0, 1).toUpperCase() +
            word.substring(1).toLowerCase())
        .join();
  }

  void _handleAdd() {
    final name = _nameController.text;
    final ProtobufType type =
        ProtobufType.values.byName(_selectedProtobufType)!;
    final description = _descriptionController.text;
    final example = _exampleController.text;
    final snakeCase = _generateSnakeCase(name);
    final camelCase = _generateCamelCase(name);
    final newParameter = EntityContractParameter(
      name: name,
      type: type,
      description: description,
      example: example,
      snakeCase: snakeCase,
      camelCase: camelCase,
      canRepeat: _canRepeat, // Add canRepeat field
    );
    widget.onAdd(newParameter);
    Navigator.pop(context);
  }

  String _selectedProtobufType = ProtobufType.string.name; // Defaults to string
  bool _showMessageTypeDropdown =
      false; // Flag to control message type visibility
  List<String> _messageTypes = ["Account", "Account Assistant"]; // Dummy list

  bool _canRepeat = false; // Initially set to false

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Contract Parameter'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Parameter Name'),
          ),
          SizedBox(height: 8.0),
          DropdownButtonFormField<String>(
            value: _selectedProtobufType,
            hint: Text('Select Protobuf Type'),
            items: ProtobufType.values
                .map((type) => DropdownMenuItem<String>(
                      value: type.name,
                      child: Text(type.name.toUpperCase()),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedProtobufType = value!;
                _showMessageTypeDropdown = value == ProtobufType.message.name;
              });
            },
          ),
          SizedBox(height: 8.0),
          Visibility(
            visible: _showMessageTypeDropdown,
            child: DropdownButtonFormField<String>(
              value: null, // Initially no selection
              hint: Text('Select Message Type'),
              items: _messageTypes
                  .map((type) => DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  // Handle message type selection (replace with your logic)
                });
              },
            ),
          ),
          SizedBox(height: 8.0),
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(labelText: 'Description'),
          ),
          SizedBox(height: 8.0),
          TextField(
            controller: _exampleController,
            decoration: InputDecoration(labelText: 'Example'),
          ),
          CheckboxListTile(
            title: Text('Can this parameter be repeated?'),
            value: _canRepeat,
            onChanged: (value) => setState(() => _canRepeat = value!),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => _handleAdd(), // Disable button if no case selected
          child: Text('Add'),
        ),
      ],
    );
  }
}
