import 'package:core_styleguide/core_styleguide.dart';
import 'package:feature_auth/src/entrance/provider/entrance_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntranceForm extends ConsumerWidget {
  const EntranceForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(entranceFormControlProvider);
    final notifier = ref.read(entranceFormControlProvider.notifier);
    return Padding(
      padding: const EdgeInsets.all(Space.x3),
      child: Column(
        children: [
          // ニックネーム入力欄
          TextFormField(
            controller: notifier.nicknameController,
            decoration: const InputDecoration(
              labelText: 'Nickname',
              icon: Icon(NitoIcons.name),
            ),
            keyboardType: TextInputType.name,
            autofocus: true,
            textInputAction: TextInputAction.next,
          ),

          const NitoGap.heightX2(),

          // メールアドレス入力欄
          TextFormField(
            controller: notifier.emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              icon: Icon(NitoIcons.email),
            ),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (String? value) async {
              await notifier.sendRequest();
            },
          ),

          const NitoGap.heightX4(),

          // サインアップボタン
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                state.isLoading ? null : await notifier.sendRequest();
                // 成功したら戻る
                if (context.mounted && state.isSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('中の人が承認するまで待ってて！'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text('申請する'),
            ),
          ),
        ],
      ),
    );
  }
}
