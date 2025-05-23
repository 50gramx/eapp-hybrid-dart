import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/material.dart';

class FocusPaneTab extends StatefulWidget {
  final String focusPaneKey;
  final Function(String) focusPaneShift;
  final bool isAccountAvailable;
  final bool isNavigatingLeft;

  const FocusPaneTab(
      {super.key,
      required this.focusPaneKey,
      required this.focusPaneShift,
      required this.isAccountAvailable,
      required this.isNavigatingLeft});

  @override
  _FocusPaneTabState createState() => _FocusPaneTabState();
}

class _FocusPaneTabState extends State<FocusPaneTab> {
  // Dictionary to store tab names and their rank
  final Map<String, int> _tabs = {
    // "Top Picks": 1,
    // "Podeage": 2,
    "Space Domains": 2,
    "Launch Pod": 1,
    "Open Pages": 3,
    "Extra Tab 1": 6,
    "Extra Tab 2": 7
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Cancel timers, streams, or listeners here
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Sort the tabs by rank and take the top 5
    final sortedTabs = _tabs.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));
    final topTabs = sortedTabs.take(widget.isAccountAvailable ? 3 : 1).toList();

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
                    fontSize: widget.isNavigatingLeft ? 14 : 12,
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
