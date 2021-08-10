library google_map_iframe;

import 'package:flutter/widgets.dart';
import 'package:google_map_iframe/src/iframe.dart';

class GoogleMapIframe {
  GoogleMapIframe(
      {required this.apiKey, this.lat, this.long, this.width, this.height});
  final String apiKey;
  final String? lat;
  final String? long;
  final double? width;
  final double? height;

  Widget fromLatLng(String lat, String lng) => GoogleMapLatLng(
        apiKey: this.apiKey,
        height: height,
        width: width,
        lat: lat,
        long: lng,
      );
}
