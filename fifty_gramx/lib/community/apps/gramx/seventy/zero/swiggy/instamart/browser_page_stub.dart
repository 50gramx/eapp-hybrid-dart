import 'package:flutter/material.dart';

class BrowsePage extends StatelessWidget {
  final int index;
  final String containingFlowTitle;

  const BrowsePage({
    required this.index,
    this.containingFlowTitle = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Platform not supported'),
      ),
    );
  }
}
