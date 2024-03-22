import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      bottomNavigationBar: buildFooter(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Weather Sensor Data - India'),
      backgroundColor: Colors.blue, // Change the background color as needed
      elevation: 0, // Remove the shadow
      centerTitle: true, // Center the title
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Add functionality for search button
          },
        ),
      ],
    );
  }

  Widget buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'GS is coming soon',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
