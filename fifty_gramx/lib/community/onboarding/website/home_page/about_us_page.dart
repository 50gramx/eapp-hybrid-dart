import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/about_us_page_sliver_body.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class WebsiteAboutUsPage extends StatefulWidget {
  const WebsiteAboutUsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WebsiteAboutUsPage> createState() => _WebsiteAboutUsPageState();
}

class _WebsiteAboutUsPageState extends State<WebsiteAboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
            backgroundColor: AppColors.backgroundPrimary(context),
            body: buildHomeAboutUsPageSliverBody());
      },
    );
  }
}
