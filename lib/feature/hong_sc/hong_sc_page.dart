import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_airfield/feature/hong_sc/hong_sc_page_controller.dart';

class HongSCPage extends ConsumerWidget {
  const HongSCPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hongSCState = ref.watch(hongSCPageControllerProvider);
    final hongSCPageController =
        ref.read(hongSCPageControllerProvider.notifier);
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("HongSC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('俺のあだ名は'),
                SizedBox(
                  width: 50,
                  height: 30,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: '〇〇',
                    ),
                    onChanged: (newText) => controller.text = newText,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () =>
                      hongSCPageController.changeNickname(controller.text),
                  child: const Text('だよ。'),
                ),
              ],
            ),
            Text(
              hongSCState.when(
                data: (data) {
                  final nickname = data.nickname;
                  return "あ、えー$nicknameなんだね。";
                },
                loading: () {
                  // delay 1000ms

                  return "ん？";
                },
                error: (error, stackTrace) {
                  return "あ、聞こえなかった。もう一回教えて。";
                },
              ),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
