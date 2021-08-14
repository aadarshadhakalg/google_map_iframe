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
