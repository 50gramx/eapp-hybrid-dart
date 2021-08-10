import 'package:fifty_gramx/widgets/homeScreenWidgets//conversations/conversationsStatefulWidget.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/appFlow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// This is the stateful widget that the main application instantiates.
class HomeStatefulWidget extends StatefulWidget {
  const HomeStatefulWidget({Key? key}) : super(key: key);

  @override
  State<HomeStatefulWidget> createState() {
    return _HomeStatefulWidgetState();
  }
}

/// This is the private State class that goes with MyStatefulWidget.
class _HomeStatefulWidgetState extends State<HomeStatefulWidget> {
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // AppFlow is just a class I created for holding information
  // about our app's flows.
  final List<AppFlow> appFlows = [
    AppFlow(
      title: 'Conversations',
      iconData: Icons.ondemand_video,
      mainColor: Colors.red,
      navigatorKey: GlobalKey<NavigatorState>(),
      index: 0,
    ),
    AppFlow(
      title: 'Connections',
      iconData: Icons.music_note,
      mainColor: Colors.green,
      navigatorKey: GlobalKey<NavigatorState>(),
      index: 0,
    ),
    AppFlow(
      index: 0,
      title: 'Spaces',
      iconData: Icons.music_note,
      mainColor: Colors.green,
      navigatorKey: GlobalKey<NavigatorState>(),
    )
  ];

  static List<Widget> _appBarWidgetOptions = <Widget>[
    Text("Conversations"),
    Text("Connections"),
    Text("Spaces"),
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    ConversationsStatefulWidget(),
    Text(
      'Connections',
      style: optionStyle,
    ),
    Text(
      'Spaces',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarWidgetOptions.elementAt(_selectedIndex),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: 'Conversations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi),
            label: 'Connections',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.anchor_outlined),
            label: 'Spaces',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
