import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Nito'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).hintColor,
                ),
                labelText: 'Enter your e-mail',
                floatingLabelStyle: const TextStyle(fontSize: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 1.0,
                  ),
                ),
              ),
              // controller: plz, create a textEditing controller,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Theme.of(context).primaryColor,
                disabledBackgroundColor: Theme.of(context).disabledColor,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                // event handling
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
