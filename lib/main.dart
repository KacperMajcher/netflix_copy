import 'package:flutter/material.dart';
import 'package:netflix_copy/app/injection_container.dart';
import 'package:netflix_copy/core/app.dart';

void main() {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
