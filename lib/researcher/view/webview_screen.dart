import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key, this.url, this.title});

  final String? url;
  final String? title;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;
    try {
      var uri = Uri.tryParse(url ?? "");
      if (uri == null || !uri.isAbsolute) {
        throw Exception("Invalid webview url: $url");
      }
      return WebViewScreenContent(
          webViewData: WebViewData(uri: uri, title: title));
    } catch (e, s) {
      return Scaffold(
        appBar: title != null
            ? AppBar(
                title: Text(title!),
              )
            : null,
        body: Center(
          child: Text(
            "Invalid url",
            style: textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
          ),
        ),
      );
    }
  }
}

class WebViewScreenContent extends StatefulWidget {
  const WebViewScreenContent({super.key, required this.webViewData});

  final WebViewData webViewData;

  @override
  State<WebViewScreenContent> createState() => _WebViewScreenContentState();
}

class _WebViewScreenContentState extends State<WebViewScreenContent> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(widget.webViewData.uri);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.webViewData.title != null
          ? AppBar(
              title: Text(widget.webViewData.title!),
            )
          : null,
      body: WebViewWidget(controller: controller),
    );
  }
}

class WebViewData {
  String? title;
  Uri uri;
  WebViewData({
    this.title,
    required this.uri,
  });
}
