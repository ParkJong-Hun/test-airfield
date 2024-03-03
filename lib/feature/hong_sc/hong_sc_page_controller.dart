import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_airfield/domain/repository/hong_repository.dart';

import '../../domain/model/hong_sc.dart';
import 'hong_sc_state.dart';

part 'hong_sc_page_controller.g.dart';

@riverpod
class HongSCPageController extends _$HongSCPageController {
  @override
  Future<HongSCState> build() async {
    final hongRepository = ref.watch(hongRepositoryProvider);
    final hongSC = await hongRepository.getHongSC();
    await Future.delayed(const Duration(seconds: 1));
    return HongSCState(nickname: hongSC.nickname);
  }

  void changeNickname(String newNickname) {
    final hongRepository = ref.read(hongRepositoryProvider);
    final newHongSC = HongSC(nickname: newNickname);
    hongRepository.setHongSC(newHongSC);
    ref.invalidate(hongRepositoryProvider);
  }
}
