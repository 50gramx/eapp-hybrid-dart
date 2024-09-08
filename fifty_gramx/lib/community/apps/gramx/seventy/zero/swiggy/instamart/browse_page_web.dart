import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui_web' as ui;

class BrowsePage extends StatefulWidget {
  const BrowsePage({
    required this.index,
    this.containingFlowTitle = '',
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  final TextEditingController _urlController =
      TextEditingController(text: 'https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _urlController,
          decoration: InputDecoration(
            hintText: 'Enter URL',
          ),
          onSubmitted: (url) {
            if (!url.startsWith('http')) {
              url = 'https://$url';
            }
            _loadUrl(url);
          },
        ),
      ),
      body: Center(
        child: HtmlElementView(viewType: 'iframeElement'),
      ),
    );
  }

  void _loadUrl(String url) {
    if (kDebugMode) {
      print("_loadUrl clicked for url: " + url);
    }
    final iframe = html.IFrameElement()
      ..src = url
      ..style.border = 'none'
      ..style.width = '100%'
      ..style.height = '100%';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => iframe,
    );
    setState(() {});
  }
}
