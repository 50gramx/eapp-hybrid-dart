import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuToggleButton extends StatelessWidget {
  @override
  const NeuToggleButton({
    Key? key,
    required this.toggleContainerButtonsList,
    required this.toggleButtonsIsSelectedList,
    required this.toggleButtonOnPressedFunction,
    this.toggleContainerCustomerWidth = 0.0,
  }) : super(key: key);

  final List<Widget> toggleContainerButtonsList;
  final List<bool> toggleButtonsIsSelectedList;
  final Function(int) toggleButtonOnPressedFunction;
  final double toggleContainerCustomerWidth;

  Widget build(BuildContext context) {
    var toggleWidget;
    if (toggleContainerButtonsList.length > 2) {
      toggleWidget = ToggleButtons(
        // constraints: BoxConstraints.expand(
        //     width: toggleContainerCustomerWidth > 0
        //         ? toggleContainerCustomerWidth
        //         : ((MediaQuery.of(context).size.width - 64 - 48) /
        //             (toggleContainerButtonsList.length)),
        //     height: 48),
        children: toggleContainerButtonsList,
        isSelected: toggleButtonsIsSelectedList,
        onPressed: (int index) {
          toggleButtonOnPressedFunction(index);
        },
        renderBorder: false,
        borderRadius: BorderRadius.circular(24),
        hoverColor: Colors.transparent,
      );
    } else {
      toggleWidget = ToggleButtons(
        // constraints: BoxConstraints(
        //     maxWidth: toggleContainerCustomerWidth > 0
        //         ? toggleContainerCustomerWidth
        //         : (MediaQuery.of(context).size.width - 64 - 48 - 64 - 16)),
        children: toggleContainerButtonsList,
        isSelected: toggleButtonsIsSelectedList,
        onPressed: (int index) {
          toggleButtonOnPressedFunction(index);
        },
        renderBorder: false,
        borderRadius: BorderRadius.circular(24),
        hoverColor: Colors.transparent,
      );
    }
    return toggleWidget;
  }
}
