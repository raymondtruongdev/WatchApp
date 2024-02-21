import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/logger_custom.dart';

final CustomLogger logger = CustomLogger();

class AppLifecycleObserver extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    // Save data when the app is closed or paused
    if (state == AppLifecycleState.inactive) {
      await saveDataState();
    }
  }

  Future<void> saveDataState() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('_cityIndex', 10);
    // logger.info('Save state data success');
  }
}
