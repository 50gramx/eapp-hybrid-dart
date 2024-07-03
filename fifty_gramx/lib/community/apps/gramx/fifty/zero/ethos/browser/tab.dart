// import 'dart:html' as html;
// import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'dart:ui' as ui;
// import 'dart:ui_web' as ui_web;

// class BrowserTab extends StatefulWidget {
//   final String url;

//   const BrowserTab({Key? key, required this.url}) : super(key: key);

//   @override
//   State<BrowserTab> createState() => _BrowserTabState();
// }

// class _BrowserTabState extends State<BrowserTab> {
//   Stream<LocalNotification> _notificationsStream =
//       NotificationsBloc.instance.notificationsStream;
//   late html.IFrameElement iframe;
//   late String url;

//   @override
//   void initState() {
//     super.initState();
//     url = widget.url;
//     iframe = createIFrame(url);

//     // Listen for local notification for changes to the underlying service
//     _notificationsStream.listen((event) {
//       if (event.type == "LocalAssistantConversation") {
//         if (event.data["subType"] == "validatedURL") {
//           print("Browser tab: ${event.data["url"]}");
//           setState(() {
//             url = _validateAndProcessUrl(event.data["url"]);
//             iframe = createIFrame(url);
//             registerIFrameView(iframe, url);
//           });
//         }
//       }
//     });

//     registerIFrameView(iframe, url);
//   }

//   //Method to validate url and search
//   String _validateAndProcessUrl(String input) {
//     final urlPattern = r'^(https?:\/\/)?([a-zA-Z0-9.-]+)?([a-zA-Z]{2,})(:\d+)?(\/[a-zA-Z0-9.-]*)*\/?$';
//     final isValidUrl = RegExp(urlPattern).hasMatch(input);

//     if (isValidUrl) {
//       return input.startsWith('http') ? input : 'http://$input';
//     } else {
//       return 'https://www.google.com/search?q=${Uri.encodeComponent(input)}';
//     }
//   }

//   void registerIFrameView(html.IFrameElement iframe, String url) {
//     final iframeId = 'iframe-$url';
//     if (kIsWeb) {
//       ui_web.platformViewRegistry
//           .registerViewFactory(iframeId, (int viewId) => iframe);
//     }
//   }

//   html.IFrameElement createIFrame(String url) {
//     return html.IFrameElement()
//       ..src = url
//       ..style.border = 'none'
//       ..style.height = '100%'
//       ..style.width = '100%'
//       ..attributes.remove('sandbox'); // Allow JavaScript
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('Hello'),);
//     // return kIsWeb
//     //     ? HtmlElementView(key: UniqueKey(), viewType: 'iframe-$url')
//     //     : Center(child: Text('This feature is only available on the web.'));
//   }
// }
