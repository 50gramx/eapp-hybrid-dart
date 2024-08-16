
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageValuePropSection(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Compare GPU Pricing',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          DataTable(
            columns: [
              DataColumn(label: Text('GPU Model')),
              DataColumn(label: Text('Provider A')),
              DataColumn(label: Text('Provider B')),
              DataColumn(label: Text('Vast.ai')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('NVIDIA RTX 3080')),
                DataCell(Text('\$0.50/hour')),
                DataCell(Text('\$0.55/hour')),
                DataCell(Text('\$0.45/hour')),
              ]),
              DataRow(cells: [
                DataCell(Text('NVIDIA RTX 3090')),
                DataCell(Text('\$0.80/hour')),
                DataCell(Text('\$0.85/hour')),
                DataCell(Text('\$0.75/hour')),
              ]),
              DataRow(cells: [
                DataCell(Text('AMD Radeon RX 6900 XT')),
                DataCell(Text('\$0.60/hour')),
                DataCell(Text('\$0.65/hour')),
                DataCell(Text('\$0.55/hour')),
              ]),
              DataRow(cells: [
                DataCell(Text('NVIDIA A100')),
                DataCell(Text('\$1.00/hour')),
                DataCell(Text('\$1.05/hour')),
                DataCell(Text('\$0.95/hour')),
              ]),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Note: Prices are subject to change based on availability and demand.',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
}


Widget _buildValuePropCard(BuildContext context, {required IconData icon, required String title, required String description}) {
  return Neumorphic(
    margin: EdgeInsets.symmetric(vertical: 8),
    padding: EdgeInsets.all(16),
    style: NeumorphicStyle(
      depth: 10,
    ),
    child: Row(
      children: [
        Icon(icon, size: 48),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 4),
            Text(description),
          ],
        ),
      ],
    ),
  );
}