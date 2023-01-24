import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:feature_frontend_top/src/view/component/top_page_for_mobile.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // FIXME(Daichi): 今後WEBとMOBILEで分岐する際に修正
    return kIsWeb
        ? const TopPageForMobile()
        : const TopPageForMobile();
  }
}
