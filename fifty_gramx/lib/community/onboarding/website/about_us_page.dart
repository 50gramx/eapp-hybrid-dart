import 'package:flutter/widgets.dart';

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
    return Container(
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [Text("ABOUT US")],
      ),
    );
  }
}
