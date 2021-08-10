# Google Map Iframe

A minimal way to embed google maps in flutter project.


## Android Setup

Set the correct `minSdkVersion` in `android/app/build.gradle` (if it was previously lower than 19):

```groovy
android {
    defaultConfig {
        minSdkVersion 19
}
}
```

## iOS Setup

No Setup Required


## 🔨 Installation
```yaml
dependencies:
  google_map_iframe: ^0.0.1
```

### Import
```dart
import 'package:google_map_iframe/google_map_iframe.dart';
```

## Usage
```dart
//Create a instance of GoogleMapIframe
var map = GoogleMapIframe(
    apiKey: 'YOUR API KEY',
    width: MediaQuery.of(context).size.width,
    height: 250,
)

// Use it 
map.fromLatLng('10.305385', '77.923029')
```

## Example
```dart

import 'package:flutter/material.dart';
import 'package:google_map_iframe/google_map_iframe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GoogleMapIframe(
          apiKey: 'AIzaSyAQnYinSuCc5pBRQxDsH2jeSWO5E7vcNto',
          width: MediaQuery.of(context).size.width,
          height: 250,
        ).fromLatLng('10.305385', '77.923029'),
      ),
    );
  }
}


```


For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
