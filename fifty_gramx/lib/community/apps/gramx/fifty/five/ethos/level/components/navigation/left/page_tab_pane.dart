import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/app_page_button.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PageTabPane extends StatefulWidget {
  final Function(int) selectPressedSectionItem;
  final EutopiaLeftNavigationScaffold parentWidget;

  PageTabPane(
      {required this.selectPressedSectionItem, required this.parentWidget});

  @override
  _PageTabPaneState createState() => _PageTabPaneState();
}

class _PageTabPaneState extends State<PageTabPane> {
  final ScrollController _scrollController = ScrollController();
  bool _showLeftButton = false;
  bool _showRightButton = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateButtonVisibility);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateButtonVisibility);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateButtonVisibility() {
    setState(() {
      _showLeftButton = _scrollController.position.pixels > 0;
      _showRightButton = _scrollController.position.pixels <
          _scrollController.position.maxScrollExtent;
    });
  }

  void _scrollLeft() {
    if (_scrollController.position.pixels > 0) {
      _scrollController.animateTo(
        _scrollController.position.pixels - 100,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void _scrollRight() {
    if (_scrollController.position.pixels <
        _scrollController.position.maxScrollExtent) {
      _scrollController.animateTo(
        _scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (_showLeftButton)
          Container(
            margin: EdgeInsets.only(bottom: 8, right: 0, left: 8, top: 16),
            child: NeumorphicButton(
                provideHapticFeedback: true,
                onPressed: _scrollLeft,
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  disableDepth: true,
                  boxShape: NeumorphicBoxShape.circle(),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: NeumorphicIcon(
                    FeatherIcons.chevronLeft,
                    size: 16,
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                      color: AppColors.contentInverseTertiary(context),
                      border: NeumorphicBorder(
                        isEnabled: false,
                        color: AppColors.contentInverseSecondary(context),
                        width: 1,
                      ),
                    ),
                  ),
                )),
          ),
        Expanded(
          child: Neumorphic(
            style: NeumorphicStyle(
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.all(Radius.circular(24))),
              color: AppColors.backgroundInverseSecondary(context),
              border: NeumorphicBorder(
                isEnabled: true,
                color: AppColors.backgroundInverseTertiary(context),
                width: 2,
              ),
            ),
            margin: EdgeInsets.only(
                bottom: 8,
                right: _showRightButton ? 0 : 16,
                left: _showLeftButton ? 0 : 8,
                top: 16),
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length,
                  (subIndex) => buildAppPageButton(
                    context,
                    subIndex,
                    widget.selectPressedSectionItem,
                    widget.parentWidget,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (_showRightButton)
          Container(
            margin: EdgeInsets.only(bottom: 8, right: 16, left: 0, top: 16),
            child: NeumorphicButton(
                provideHapticFeedback: true,
                onPressed: _scrollRight,
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  disableDepth: true,
                  boxShape: NeumorphicBoxShape.circle(),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: NeumorphicIcon(
                    FeatherIcons.chevronRight,
                    size: 16,
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                      color: AppColors.contentInverseTertiary(context),
                      border: NeumorphicBorder(
                        isEnabled: false,
                        color: AppColors.contentInverseSecondary(context),
                        width: 1,
                      ),
                    ),
                  ),
                )),
          ),
      ],
    );
  }
}
