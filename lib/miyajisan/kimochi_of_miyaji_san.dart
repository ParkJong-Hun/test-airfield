import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_airfield/miyajisan/kimochi.dart';
import 'package:test_airfield/miyajisan/miyaji_san.dart';

part 'kimochi_of_miyaji_san.g.dart';

@riverpod
Kimochi kimochiOfMiyajiSan(KimochiOfMiyajiSanRef ref) {
  final String miyajiSan = ref.watch(miyajiSanProvider);

  Kimochi result;

  switch (miyajiSan) {
    case '宮地さん':
    case '宮地先生':
    case '宮地様':
    case '宮地さま':
      result = Kimochi.happy;
      break;
    case '宮地君':
    case '宮地くん':
      result = Kimochi.happy;
      break;
    case '宮地ちゃん':
      result = Kimochi.love;
      break;
    case '宮地':
      result = Kimochi.surprise;
      break;
    case '宮地野郎':
    case '宮地やろう':
    case '宮地ソンチャン':
      result = Kimochi.angry;
      break;
    default:
      result = Kimochi.angry;
  }

  return result;
}
