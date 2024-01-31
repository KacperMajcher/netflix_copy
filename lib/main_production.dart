import 'package:flutter/material.dart';
import 'package:netflix_copy/core/app.dart';
import 'package:netflix_copy/core/config.dart';

void main() {
  Config.appFlavor = Flavor.production;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
