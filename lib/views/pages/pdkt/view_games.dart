import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewGames extends StatefulWidget {
  final String url;
  final bool isLoading = true;
  // final _key = UniqueKey();

  const ViewGames(this.url, {super.key});

  @override
  State<ViewGames> createState() => _ViewGamesState();
}

class _ViewGamesState extends State<ViewGames> {
  bool isLoading = true;

  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            WebView(
              key: _key,
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(),
          ],
        ),
      ),
    );
  }
}
