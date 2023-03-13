import 'package:core_styleguide/core_styleguide.dart';
import 'package:flutter/material.dart';

/// OSS ライセンス
class OssLicensesSection extends StatelessWidget {
  const OssLicensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          showLicensePage(
            context: context,
            applicationLegalese: '© 2022 NITO',
          );
        },
        child: const Padding(
          padding: EdgeInsets.all(Space.x2),
          child: SizedBox(
            width: double.infinity,
            child: Text('オープンソースライセンス'),
          ),
        ),
      ),
    );
  }
}
