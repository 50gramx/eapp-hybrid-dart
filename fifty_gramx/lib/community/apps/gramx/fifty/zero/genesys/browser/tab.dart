import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:ui' as ui;

class BrowserTab extends StatefulWidget {
  final String url;

  const BrowserTab({Key? key, required this.url}) : super(key: key);

  @override
  State<BrowserTab> createState() => _BrowserTabState();
}

class _BrowserTabState extends State<BrowserTab> {
  late html.IFrameElement iframe;

  @override
  void initState() {
    super.initState();

    iframe = html.IFrameElement()
      ..src = widget.url
      ..style.border = 'none'
      ..width = '100%'
      ..height = '100%'
      ..attributes.remove('sandbox');  // Allow JavaScript

    // Append the iframe to a container div
    final divElement = html.DivElement()
      ..style.width = '100%'
      ..style.height = '100vh' // Adjust height as needed
      ..style.overflow = 'auto' // To allow scrolling
      ..style.border = '1px solid #ccc'
      ..append(iframe);

    // Register the view type for the iframe
    final iframeId = 'iframe-${widget.url}';
    if (kIsWeb) {
      ui.platformViewRegistry.registerViewFactory(iframeId, (int viewId) => divElement);
    }
  }

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? HtmlElementView(viewType: 'iframe-${widget.url}')
        : Center(child: Text('This feature is only available on the web.'));
  }
}
























// import 'package:flutter/material.dart';
// import 'dart:html' as html;
//
// class BrowserTab extends StatefulWidget{
//   final String url;
//
//   const BrowserTab({Key? key, required this.url}) : super(key: key);
//
//   @override
//   State<BrowserTab> createState() => _BrowserTabState();
// }
//
// class _BrowserTabState extends State<BrowserTab> {
//
//   late String url;
//
//   @override
//   void initState() {
//     super.initState();
//     // Replace 'https://www.example.com' with your desired URL
//     // String url = 'https://www.50gramx.com';
//     url = widget.url;
//     url = 'https://www.pitchfork.com';
//     html.IFrameElement iframe = html.IFrameElement();
//     iframe.src = url;
//     iframe.style.border = 'none';
//     iframe.width = '100%';
//     iframe.height = '100%';
//     // Allow JavaScript
//     iframe.attributes.remove('sandbox');
//     html.DivElement divElement = html.DivElement()
//       ..style.width = '100%'
//       ..style.height = '100vh' // adjust height as needed
//       ..style.overflow = 'auto' // to allow scrolling
//       ..style.border = '1px solid #ccc'
//       ..append(iframe);
//     html.DivElement wrapper = html.DivElement()
//       ..append(divElement);
//     html.Element body = html.document.body!;
//     body.children.add(wrapper);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//     );
//   }
// }










  // final List<String> _tabs = ['https://www.google.com'];
  // final TextEditingController _urlController = TextEditingController();
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: TextField(
  //         controller: _urlController,
  //         onSubmitted: (url) {
  //           _launchUrl(url);
  //         },
  //         decoration: InputDecoration(
  //           hintText: 'Enter URL',
  //           suffixIcon: IconButton(
  //             icon: Icon(Icons.search),
  //             onPressed: () {
  //               _launchUrl(_urlController.text);
  //             },
  //           ),
  //         ),
  //       ),
  //     ),
  //     body: ListView.builder(
  //       itemCount: _tabs.length,
  //       itemBuilder: (context, index) {
  //         return ListTile(
  //           title: Text(_tabs[index]),
  //           onTap: () {
  //             _launchUrl(_tabs[index]);
  //           },
  //         );
  //       },
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: addTab,
  //       child: Icon(Icons.add),
  //     ),
  //   );
  // }
  //
  // _launchUrl(String url) async {
  //   Uri uri = Uri.parse(url);
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri, mode: LaunchMode.inAppWebView);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  //
  // void addTab() {
  //   setState(() {
  //     _tabs.add('https://www.google.com');
  //   });
  // }

