import 'package:feature_auth/src/entrance/ui/entrance_page_for_mobile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EntrancePage extends StatelessWidget {
  const EntrancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // FIXME(Daichi): 今後WEBとMOBILEで分岐する際に修正
    return kIsWeb
        ? const EntrancePageForMobile()
        : const EntrancePageForMobile();
  }
}
