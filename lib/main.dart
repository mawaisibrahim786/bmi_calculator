import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
  @@ -18,16 +18,33 @@ class _InputPageState extends State<InputPage> {
  Expanded(child: Row(
  children: <Widget>[
  Expanded(
  child: new RepeatContainerCode(colors: Color(0xFF1D1E33))
  child: new RepeatContainerCode(colors: Color(0xFF1D1E33),
  cardWidget: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Icon(
  FontAwesomeIcons.male,
  size:80.0,
  ),
  SizedBox(
  height: 15.0,
  ),
  Text(
  'Male',
  style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98)),
  ),
  ],
  ),
  )
  ),
  Expanded(child: new RepeatContainerCode(colors: Colors.blueGrey,)),
  Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
  ],
  )),
  Expanded(child: new RepeatContainerCode(colors: Colors.greenAccent,)),
  Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
  Expanded(child: Row(
  children: <Widget>[
  Expanded(child: new RepeatContainerCode(colors: Colors.blueAccent,)),
  Expanded(child: new RepeatContainerCode(colors: Colors.amberAccent,)),
  Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
  Expanded(child: new RepeatContainerCode(colors: Color(0xFF1D1E33),)),
  ],
  )),
  ],
  @@ -38,12 +55,14 @@ class _InputPageState extends State<InputPage> {
  }

  class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors});
  RepeatContainerCode({@required this.colors,this.cardWidget});
  final Color colors;
  final cardWidget;
  @override
  Widget build(BuildContext context) {
  return Container(
  margin: EdgeInsets.all(15.0),
  child: cardWidget,
  decoration: BoxDecoration(
  color:colors,
  borderRadius: BorderRadius.circular(10.0)
  7  pubspec.lock
  @@ -67,6 +67,13 @@ packages:
  description: flutter
  source: sdk
  version: "0.0.0"
  font_awesome_flutter:
  dependency: "direct main"
  description:
  name: font_awesome_flutter
  url: "https://pub.dartlang.org"
  source: hosted
  version: "8.10.0"
  matcher:
  dependency: transitive
  description:
  1  pubspec.yaml
  @@ -28,6 +28,7 @@ dependencies:
  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.0
  font_awesome_flutter: ^8.10.0

  dev_dependencies:
  flutter_test: