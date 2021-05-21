import 'package:fifty_gramx/views/onboarding/account/validateAccountWidget.dart';
import 'package:flutter/material.dart';

class GetStartedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Started'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Get Started'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ValidateAccountStatefulWidget()),
            );
          },
        ),
      ),
    );
  }
}
