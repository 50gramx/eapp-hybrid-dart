import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class   BrowserTab extends StatefulWidget{
  @override
  State<BrowserTab> createState() => _BrowserTabState();
}

class _BrowserTabState extends State<BrowserTab> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Replace 'https://www.example.com' with your desired URL
          String url = 'https://www.50gramx.com';
          html.IFrameElement iframe = html.IFrameElement();
          iframe.src = url;
          iframe.style.border = 'none';
          iframe.width = '100%';
          iframe.height = '100%';
          // Allow JavaScript
          iframe.attributes.remove('sandbox');
          html.DivElement divElement = html.DivElement()
            ..style.width = '100%'
            ..style.height = '400px' // adjust height as needed
            ..style.overflow = 'auto' // to allow scrolling
            ..style.border = '1px solid #ccc'
            ..append(iframe);
          html.DivElement wrapper = html.DivElement()..append(divElement);
          html.Element body = html.document.body!;
          body.children.add(wrapper);
        },
        child: Text('Open WebView'),
      ),
    );
  }

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
}
