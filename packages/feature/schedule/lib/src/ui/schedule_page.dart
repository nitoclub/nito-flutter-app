import 'package:feature_schedule/src/ui/schedule_page_for_mobile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    // FIXME(Daichi): 今後WEBとMOBILEで分岐する際に修正
    return kIsWeb
        ? const SchedulePageForMobile()
        : const SchedulePageForMobile();
  }
}
