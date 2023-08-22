import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/components/app_bar/app_bar.dart';
import 'package:flutter_base_project/app/extensions/general_extension.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Base WebView
/// Üste kısımda yükleme oranına göre [LinearProgressIndicator] çıkmakta
///
class MyWebView extends StatefulWidget {
  final String? url;
  final String? contentBase64;
  final String? contentHtml;
  final bool showAppBar;
  final Color? progressColor;
  final Color? progressBackgroundColor;
  final Function(String)? listenToUrl;

  const MyWebView({
    super.key,
    this.url,
    this.showAppBar = true,
    this.progressColor,
    this.progressBackgroundColor,
    this.contentBase64,
    this.contentHtml,
    this.listenToUrl,
  }) : assert(url != null || contentBase64 != null || contentHtml != null);

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  late final WebViewController _controller;
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController.fromPlatformCreationParams(const PlatformWebViewControllerCreationParams());
    _controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) async {
            debugPrint('-----------> WebViw Url: ${request.url}');
            if (widget.listenToUrl != null) widget.listenToUrl!(request.url);
            if (request.url.startsWith('tel:') || request.url.startsWith('mailto:')) {
              request.url.launchLink();
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          onProgress: (int progress) {
            _progress = progress * 0.01;
            log('is loading (progress : ${_progress.toStringAsFixed(2)}%)', name: 'WebView');
            if (mounted) setState(() {});
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
        ),
      );

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _loadUrl();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.showAppBar ? const MyAppBar() : null,
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          _progress != 1
              ? LinearProgressIndicator(
                  value: _progress,
                  backgroundColor: widget.progressBackgroundColor ?? Theme.of(context).colorScheme.primary,
                  valueColor: AlwaysStoppedAnimation<Color?>(
                    widget.progressColor ?? Theme.of(context).colorScheme.secondary,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Future<void> _loadUrl() async {
    if (widget.url != null) {
      _controller.loadRequest(Uri.parse(widget.url!));
    } else if (widget.contentBase64 != null) {
      final html = utf8.decode(base64.decode(widget.contentBase64!));
      _controller.loadHtmlString(html);
    } else if (widget.contentHtml != null) {
      _controller.loadHtmlString(widget.contentHtml!);
    }
  }
}
