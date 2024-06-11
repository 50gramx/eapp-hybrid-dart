import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
  InAppWebViewController? _webViewController;

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
        child: InAppWebView(
          initialUrlRequest:
              URLRequest(url: WebUri.uri(Uri.parse('https://flutter.dev'))),
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
        ),
      ),
    );
  }

  void _loadUrl(String url) {
    _webViewController?.loadUrl(
        urlRequest: URLRequest(url: WebUri.uri(Uri.parse(url))));
  }
}
