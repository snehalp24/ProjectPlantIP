import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:plant_flutter/components/AppLoader.dart';
import 'package:plant_flutter/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String url;
  final String name;

  WebViewScreen({required this.url, required this.name});

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(widget.name, textColor: Colors.white,backWidget: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white), onPressed: () => finish(context))),
      body: Stack(
        children: [
          WebView(
            initialUrl: widget.url,
            onProgress: (c) {
              if (c == 100) {
                appStore.setLoading(false);
              } else {
                appStore.setLoading(true);
              }
            },
          ),
          Observer(
            builder: (_) {
              return AppLoader().center().visible(appStore.isLoading);
            },
          )
        ],
      ),
    );
  }
}
