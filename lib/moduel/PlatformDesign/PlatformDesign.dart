import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformDesign extends StatelessWidget {
String os;
PlatformDesign({required this.os});
  @override
  Widget build(BuildContext context) {
    if(os=='android')
      return CircularProgressIndicator();
    return CupertinoActivityIndicator();
  }
}
