import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/EntityContractParameter.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EntityContractParameterListItem extends StatelessWidget {
  final EntityContractParameter parameter;

  const EntityContractParameterListItem({required this.parameter, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Parameter: ${parameter.name}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text('Type: ${parameter.type}'),
          SizedBox(height: 4.0),
          Text('Description: ${parameter.description}'),
          SizedBox(height: 4.0),
          parameter.snakeCase.isNotEmpty
              ? Text('Snake Case: ${parameter.snakeCase}')
              : SizedBox(),
          SizedBox(height: 4.0),
          parameter.camelCase.isNotEmpty
              ? Text('Camel Case: ${parameter.camelCase}')
              : SizedBox(),
        ],
      ),
    );
  }
}
