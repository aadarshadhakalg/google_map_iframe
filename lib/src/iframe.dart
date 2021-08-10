import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// A Google Map Embedder
class GoogleMapLatLng extends StatefulWidget {
  const GoogleMapLatLng(
      {Key? key,
      required this.apiKey,
      this.lat,
      this.long,
      this.width,
      this.height})
      : super(key: key);

  final String apiKey;
  final String? lat;
  final String? long;
  final double? width;
  final double? height;

  @override
  _GoogleMapLatLngState createState() => _GoogleMapLatLngState();
}

class _GoogleMapLatLngState extends State<GoogleMapLatLng> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height ?? MediaQuery.of(context).size.height,
      child: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        gestureNavigationEnabled: true,
        initialUrl: Uri.dataFromString(
          '''
          <style>
          *{
            margin:0px;
            padding:0px;
            overflow:hidden;
          }
          </style>

          <iframe 
                  width=${widget.width ?? MediaQuery.of(context).size.width} 
                  height=${widget.height ?? MediaQuery.of(context).size.height}
                  style=\"border:0;overflow:hidden;\" 
                  loading=\"lazy\" 
                  frameborder=\"0\"
                  allowfullscreen n
                  src=\"https://www.google.com/maps/embed/v1/place?key=${widget.apiKey}&q=${widget.lat},${widget.long}\">
                  </iframe>''',
          mimeType: 'text/html',
        ).toString(),
      ),
    );
  }
}
