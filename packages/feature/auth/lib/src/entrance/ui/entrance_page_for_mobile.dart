import 'package:core_styleguide/core_styleguide.dart';
import 'package:feature_auth/src/entrance/ui/entrance_form.dart';
import 'package:flutter/material.dart';

class EntrancePageForMobile extends StatelessWidget {
  const EntrancePageForMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NitoScaffold(
      appBar: NitoAppBar(
        title: const Text('NITOメンバー申請フォーム'),
      ),
      body: const EntranceForm(),
    );
  }
}
