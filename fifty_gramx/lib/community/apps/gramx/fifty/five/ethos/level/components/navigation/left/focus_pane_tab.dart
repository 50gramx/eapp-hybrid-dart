import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:flutter/material.dart';

class FocusPaneTab extends StatefulWidget {
  final String focusPaneKey;
  final Function(String) focusPaneShift;

  const FocusPaneTab(
      {super.key, required this.focusPaneKey, required this.focusPaneShift});

  @override
  _FocusPaneTabState createState() => _FocusPaneTabState();
}

class _FocusPaneTabState extends State<FocusPaneTab> {
  // Dictionary to store tab names and their rank
  final Map<String, int> _tabs = {
    "Top Picks": 1,
    "Podeage": 2,
    "Space Domains": 4,
    "Launch Pod": 3,
    "Open Pages": 5,
    "Extra Tab 1": 6,
    "Extra Tab 2": 7
  };

  // Variable to keep track of the selected tab key
  String _selectedTabKey = "Launch Pod";

  bool _isAccountAvailable = false;

  checkAccountStatus() async {
    bool isAvailable = await AccountData().isValid();
    setState(() {
      _isAccountAvailable = isAvailable;
    });
  }

  @override
  void initState() {
    checkAccountStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Sort the tabs by rank and take the top 5
    final sortedTabs = _tabs.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));
    final topTabs = sortedTabs.take(_isAccountAvailable ? 5 : 3).toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: 32),
        ...List.generate(topTabs.length, (index) {
          // Check if the current tab is selected using the key
          bool isSelected = widget.focusPaneKey == topTabs[index].key;

          return GestureDetector(
            onTap: () {
              // Update the selected tab key
              widget.focusPaneShift(topTabs[index].key);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  topTabs[index].key,
                  style: TextStyle(
                    color: isSelected
                        ? AppColors.contentPrimary(context)
                        : AppColors.contentSecondary(context),
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // Add a bottom line if this tab is selected
                if (isSelected)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    height: 2,
                    width: 40,
                    color: AppColors.contentPrimary(context),
                  )
              ],
            ),
          );
        }),
        SizedBox(width: 76),
      ],
    );
  }
}
