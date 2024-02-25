import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'kimochi.dart';
import 'kimochi_of_miyaji_san.dart';
import 'miyaji_san.dart';

// Learning How to map riverpod.
class MiyajiSanPage extends ConsumerWidget {
  const MiyajiSanPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController controller = TextEditingController();
    final MiyajiSan miyajiSan = ref.read(miyajiSanProvider.notifier);
    final Kimochi kimochiOfMiyajiSan = ref.watch(kimochiOfMiyajiSanProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('あの...宮地'),
                SizedBox(
                  width: 50,
                  height: 30,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'さん',
                    ),
                    onChanged: (yobikata) => controller.text = yobikata,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => miyajiSan.changeYobikata(controller.text),
                  child: const Text('って呼んで良いですか？'),
                ),
              ],
            ),
            Text(
              '彼は${toText(kimochiOfMiyajiSan)}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }

  String toText(Kimochi kimochi) {
    switch (kimochi) {
      case Kimochi.happy:
        return '嬉しく感じている。';
      case Kimochi.angry:
        return '怒っている。';
      case Kimochi.love:
        return 'キュンとしている。';
      case Kimochi.surprise:
        return '驚いている';
    }
  }
}
