import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nepal_bus/screen/loginpage.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MaterialApp(
    title: "NEPAL BUS SERVICE",
    debugShowCheckedModeBanner: false,
    home: loginpage(),
  ));
  FlutterNativeSplash.remove();
}