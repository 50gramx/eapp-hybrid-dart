import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Investor {
  String name;
  DateTime dateOfPitch;
  String status;
  DateTime followUpDate;
  String contactInfo; // New field
  String investmentHistory; // New field
  String meetingNotes; // New field
  String investmentPreferences; // New field

  Investor({
    required this.name,
    required this.dateOfPitch,
    required this.status,
    required this.followUpDate,
    this.contactInfo = '',
    this.investmentHistory = '',
    this.meetingNotes = '',
    this.investmentPreferences = '',
  });
}

class InvestorProfileScreen extends StatelessWidget {
  final Investor investor;
  final Function(int, Investor) onUpdate; // Callback for updating investor
  final int index; // Index of the investor in the list

  InvestorProfileScreen(
      {required this.investor, required this.onUpdate, required this.index});

  void _showEditInvestorProfileDialog(BuildContext context, Investor investor) {
    TextEditingController contactInfoController =
        TextEditingController(text: investor.contactInfo);
    TextEditingController investmentHistoryController =
        TextEditingController(text: investor.investmentHistory);
    TextEditingController meetingNotesController =
        TextEditingController(text: investor.meetingNotes);
    TextEditingController investmentPreferencesController =
        TextEditingController(text: investor.investmentPreferences);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Investor Profile'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: contactInfoController,
                  decoration: InputDecoration(hintText: "Contact Info"),
                ),
                TextField(
                  controller: investmentHistoryController,
                  decoration: InputDecoration(hintText: "Investment History"),
                ),
                TextField(
                  controller: meetingNotesController,
                  decoration: InputDecoration(hintText: "Meeting Notes"),
                ),
                TextField(
                  controller: investmentPreferencesController,
                  decoration:
                      InputDecoration(hintText: "Investment Preferences"),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('SAVE'),
              onPressed: () {
// Update the investor's details
                Investor updatedInvestor = Investor(
                  name: investor.name,
                  dateOfPitch: investor.dateOfPitch,
                  status: investor.status,
                  followUpDate: investor.followUpDate,
                  contactInfo: contactInfoController.text,
                  investmentHistory: investmentHistoryController.text,
                  meetingNotes: meetingNotesController.text,
                  investmentPreferences: investmentPreferencesController.text,
                );
                onUpdate(index, updatedInvestor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(investor.name),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showEditInvestorProfileDialog(context, investor),
        child: Icon(Icons.edit),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Contact Info: ${investor.contactInfo}'),

            Text('Investment History: ${investor.investmentHistory}'),
            Text('Meeting Notes: ${investor.meetingNotes}'),
            Text('Investment Preferences: ${investor.investmentPreferences}'),
// Add buttons or other UI elements for editing these details
          ],
        ),
      ),
    );
  }
}

class InvestorPipelineManagement extends StatefulWidget {
  @override
  _InvestorPipelineManagementState createState() =>
      _InvestorPipelineManagementState();
}

class _InvestorPipelineManagementState
    extends State<InvestorPipelineManagement> {
  // Dummy data list
  List<Investor> investors = [];
  String searchQuery = "";

  void updateInvestor(int index, Investor updatedInvestor) {
    setState(() {
      investors[index] = updatedInvestor;
    });
  }

  @override
  void initState() {
    super.initState();
// Populate with some dummy data
    investors.add(Investor(
        name: 'Investor A',
        dateOfPitch: DateTime.now(),
        status: 'Interested',
        followUpDate: DateTime.now().add(Duration(days: 7))));
    investors.add(Investor(
        name: 'Investor B',
        dateOfPitch: DateTime.now().subtract(Duration(days: 1)),
        status: 'Pending',
        followUpDate: DateTime.now().add(Duration(days: 10))));
// Add more dummy investors as needed...
  }

  // Sort function - example for sorting by name
  void _sortInvestorsByName() {
    investors.sort((a, b) => a.name.compareTo(b.name));
    setState(() {});
  }

  // Add Investor - this could be extended to a form where you can input details
  void _addInvestor(Investor investor) {
    setState(() {
      investors.add(investor);
    });
  }

  // Edit Investor - placeholder function, implementation depends on your UI
  void editInvestor(int index, Investor newInvestorData) {
    setState(() {
      investors[index] = newInvestorData;
    });
  }

  // Delete Investor
  void _deleteInvestor(int index) {
    setState(() {
      investors.removeAt(index);
    });
  }

// Search Investors - placeholder for search functionality
  List<Investor> _searchInvestors() {
    if (searchQuery.isEmpty) {
      return investors;
    }
    return investors
        .where((investor) =>
            investor.name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }

  void _showEditInvestorDialog(int index) {
    Investor currentInvestor = investors[index];
    TextEditingController nameController =
        TextEditingController(text: currentInvestor.name);
    // You can create more controllers for other fields like dateOfPitch, status, etc.

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Investor'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: "Investor Name"),
                ),
                // Add more TextFields for other properties like dateOfPitch, status, etc.
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('SAVE'),
              onPressed: () {
                // Update the investor details
                setState(() {
                  investors[index].name = nameController.text;
                  // Update other properties similarly
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showAddInvestorDialog() {
    // The dialog will contain TextFields for entering details
    // For simplicity, only the 'name' field is shown here
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newName = '';
        return AlertDialog(
          title: Text('Add New Investor'),
          content: TextField(
            onChanged: (value) {
              newName = value;
            },
            decoration: InputDecoration(hintText: "Investor Name"),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('ADD'),
              onPressed: () {
                // Add new investor logic
                if (newName.isNotEmpty) {
                  _addInvestor(Investor(
                    name: newName,
                    dateOfPitch: DateTime.now(), // Replace with actual date
                    status: 'Pending', // Default or chosen status
                    followUpDate: DateTime.now()
                        .add(Duration(days: 7)), // Replace with actual date
                  ));
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // ... [Rest of your
  @override
  Widget build(BuildContext context) {
    List<Investor> displayedInvestors = _searchInvestors();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddInvestorDialog,
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Search Investors',
              suffixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: _sortInvestorsByName,
            child: Text('Sort by Name'),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(label: Text('Investor Name')),
                  DataColumn(label: Text('Date of Pitch')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Follow-Up Date')),
                  DataColumn(label: Text('Actions')),
                ],
                rows: List<DataRow>.generate(
                  displayedInvestors.length,
                  (index) => DataRow(
                    cells: <DataCell>[
                      DataCell(ElevatedButton(
                        child: Text(displayedInvestors[index].name),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InvestorProfileScreen(
                                investor: investors[index],
                                onUpdate: updateInvestor,
                                index: index,
                              ),
                            ),
                          );
                        },
                      )),
                      DataCell(Text(displayedInvestors[index]
                          .dateOfPitch
                          .toString()
                          .substring(0, 10))),
                      DataCell(Text(displayedInvestors[index].status)),
                      DataCell(Text(displayedInvestors[index]
                          .followUpDate
                          .toString()
                          .substring(0, 10))),
                      DataCell(Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => _showEditInvestorDialog(index),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => _deleteInvestor(index),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // TODO: Add buttons for adding and sorting investors
        ],
      ),
    );
  }
}
