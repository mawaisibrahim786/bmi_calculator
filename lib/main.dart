import 'package:flutter/material.dart';
import 'constantfile.dart';
class RepeatCardWidget extends StatelessWidget {
  RepeatCardWidget({@required this.iconData,this.label});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size:85.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          label,
          style:klablestyle ,
        ),
      ],
    );
  }
}
