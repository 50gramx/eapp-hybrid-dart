/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/66/llama-7b-collar/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/66/llama-7b-collar/plan_page/plan_page_config.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_drawer.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class PodeageLLAMA7BPlanPage extends StatefulWidget {
  const PodeageLLAMA7BPlanPage({Key? key}) : super(key: key);

  @override
  State<PodeageLLAMA7BPlanPage> createState() => _PodeageLLAMA7BPlanPageState();
}

class _PodeageLLAMA7BPlanPageState extends State<PodeageLLAMA7BPlanPage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundPrimary(context),
      statusBarBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
      statusBarIconBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
    ));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
            backgroundColor: AppColors.backgroundSecondary(context),
            drawer: buildHomePageAppDrawer(context),
            body: CustomScrollView(
              slivers: <Widget>[
                HomePageSliverAppBar(
                  isPinned: false,
                ),
                PodeageLLAMA7BOverviewPageSliverAppBar(),
                PodeageLLAMA7BPlanPageConfig().buildPage(context),
              ],
            ));
      },
    );
  }
}
