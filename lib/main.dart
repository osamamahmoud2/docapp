import 'package:device_preview/device_preview.dart';
import 'package:docapp/core/routings/app_router.dart';
import 'package:docapp/doc_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
