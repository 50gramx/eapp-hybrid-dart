import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProgressHeadingListTile extends StatelessWidget {
  @override
  const ProgressHeadingListTile({
    Key? key,
    this.isTopMostTile = false,
    this.isProgressed = false,
    this.isHeadingActive = false,
    required this.headingTitle,
    this.isLastMostTile = false,
  }) : super(key: key);

  final bool isTopMostTile;
  final bool isProgressed;
  final bool isHeadingActive;
  final String headingTitle;
  final bool isLastMostTile;

  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      minVerticalPadding: 0,
      title: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 64,
              // height: 64,
              child: Column(
                children: [
                  Container(
                    height: 22,
                    width: 3,
                    color: isTopMostTile
                        ? AppColors.backgroundPrimary(context)
                        : isHeadingActive
                            ? AppColors.borderSelected(context)
                            : (isProgressed
                                ? AppColors.borderSelected(context)
                                : AppColors.borderOpaque(context)),
                  ),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(36)),
                      color: isHeadingActive
                          ? AppColors.contentPrimary(context)
                          : AppColors.backgroundPrimary(context),
                    ),
                    child: Icon(
                      Icons.circle,
                      size: isHeadingActive ? 4 : 8,
                      color: isHeadingActive
                          ? AppColors.backgroundPrimary(context)
                          : (isProgressed
                              ? AppColors.contentPrimary(context)
                              : AppColors.borderOpaque(context)),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 3,
                    color: isLastMostTile
                        ? AppColors.backgroundPrimary(context)
                        : (isProgressed
                            ? AppColors.borderSelected(context)
                            : AppColors.borderOpaque(context)),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Text(headingTitle,
                    overflow: TextOverflow.clip,
                    style: isHeadingActive
                        ? AppTextStyle.themeProgressTitleTextActiveStyle(
                            context)
                        : (isProgressed
                            ? AppTextStyle
                                .themeProgressTitleTextProgressedStyle(context)
                            : AppTextStyle.themeProgressTitleTextDisabledStyle(
                                context)))),
          ],
        ),
      ),
    );
  }
}
