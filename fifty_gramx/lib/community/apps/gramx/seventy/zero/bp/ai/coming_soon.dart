import 'package:flutter/material.dart';

class BaibhavAIPage extends StatefulWidget {
  const BaibhavAIPage({
    required this.index,
    this.containingFlowTitle = '',
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<BaibhavAIPage> createState() => _BaibhavAIPageState();
}

class _BaibhavAIPageState extends State<BaibhavAIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Baibhavs Virtual Assistant',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Adjust text color as needed
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Coming Soon!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Adjust text color as needed
              ),
            ),
            SizedBox(height: 40),
            Text(
              'We are working hard to bring you\nthe best virtual assistant experience.\nStay tuned for updates!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black, // Adjust text color as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
