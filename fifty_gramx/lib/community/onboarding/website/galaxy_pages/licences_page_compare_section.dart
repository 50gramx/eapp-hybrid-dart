import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPageCompareSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // Title
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Compare Features Across Plans',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      // Feature Comparison Table
      Table(
        border: TableBorder.all(color: Colors.grey),
        children: [
          // Table Header
          TableRow(
            decoration: BoxDecoration(color: Colors.grey[200]),
            children: [
              TableCell(
                child: Center(child: Text('Feature')),
              ),
              TableCell(
                child: Center(child: Text('Plan A')),
              ),
              TableCell(
                child: Center(child: Text('Plan B')),
              ),
              TableCell(
                child: Center(child: Text('Plan C')),
              ),
              TableCell(
                child: Center(child: Text('Plan D')),
              ),
            ],
          ),
          // Table Rows (Features)
          TableRow(
            children: [
              TableCell(child: Center(child: Text('Personal Space'))),
              TableCell(child: Center(child: Text('1'))),
              TableCell(child: Center(child: Text('3'))),
              TableCell(child: Center(child: Text('-'))),
              TableCell(child: Center(child: Text('-'))),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Center(child: Text('Private Space'))),
              TableCell(child: Center(child: Text('-'))),
              TableCell(child: Center(child: Text('-'))),
              TableCell(child: Center(child: Text('5'))),
              TableCell(child: Center(child: Text('10'))),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Center(child: Text('Feature 3'))),
              TableCell(child: Center(child: Text('✓'))),
              TableCell(child: Center(child: Text('✓'))),
              TableCell(child: Center(child: Text('✓'))),
              TableCell(child: Center(child: Text('✓'))),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Center(child: Text('Feature 4'))),
              TableCell(child: Center(child: Text('✓'))),
              TableCell(child: Center(child: Text('✓'))),
              TableCell(child: Center(child: Text('✓'))),
              TableCell(child: Center(child: Text('✓'))),
            ],
          ),
        ],
      ),
    ],
  );
}
