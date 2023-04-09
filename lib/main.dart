import 'dart:io';

import 'package:flutter/material.dart';

import 'moduel/constent.dart';
import 'moduel/desktop.dart';
import 'moduel/mobile.dart';
import 'package:desktop_window/desktop_window.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isWindows)
     DesktopWindow.setMinWindowSize(Size(350, 600));
  getOS();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //abdooooooo
  //hi khalid
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      // LayoutBuilder(
      //   builder: (BuildContext , BoxConstraints ) {
      //     if(BoxConstraints.minWidth.toInt()<=560)
      //       return MobilePlateForm() ;
      //     return DesktopPlateForm();
      //   },
      // ),
      Builder(builder: (BuildContext context) {
        if(MediaQuery.of(context).size.width.toInt()<=560)
          return MediaQuery(
              data:MediaQuery.of(context).copyWith(
                textScaleFactor: .7,
                boldText:true,
              ),
              child: MobilePlateForm(),
          );
        return  MediaQuery(
           data:MediaQuery.of(context).copyWith(
            textScaleFactor:1.25
        ),
          child: DesktopPlateForm(),
        );
      },)
    );
  }
}

