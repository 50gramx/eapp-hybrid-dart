import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/page_tab_pane.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  List<String> items = [
    '50GRAMx',
    '51GRAMx',
    '52GRAMx',
    '53GRAMx',
    '54GRAMx',
    // Add as many items as you want
  ];

  String centerItem = '50GRAMx';
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  _scrollListener() {
    int centerIndex = ((_controller.offset + MediaQuery.of(context).size.height / 2) /
        MediaQuery.of(context).size.height).round();
    if (centerIndex >= 0 && centerIndex < items.length) {
      setState(() {
        centerItem = items[centerIndex];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.backgroundInverseTertiary(context), AppColors.backgroundInverseSecondary(context)],
                    ),
                  ),
                  child: PageTabPane(
                    selectPressedSectionItem: (value) {},
                  ),
                );
              }
              return Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.backgroundInverseSecondary(context), AppColors.backgroundInverseTertiary(context)],
                  ),
                ),
              );
            },
            controller: _controller,
          ),
          // Fixed Text in the Center
          Center(
            child: Text(
              centerItem,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }
}
