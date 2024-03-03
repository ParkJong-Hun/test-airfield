import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_airfield/infrastructure/data_source/local_data_source.dart';
import 'package:test_airfield/infrastructure/wrapper/hong_repository_wrapper.dart';

import '../model/hong_sc.dart';

part 'hong_repository.g.dart';

@riverpod
HongRepository hongRepository(Ref ref) =>
    HongRepository(ref.read(localDataSourceProvider));

class HongRepository {
  HongRepository(this._localDataSource);

  final LocalDataSource _localDataSource;

  Future<HongSC> getHongSC() async {
    final String hongSCRaw = await _localDataSource.getHongSC();
    return hongSCRaw.toDomainModel();
  }

  void setHongSC(HongSC newHongSC) {
    return _localDataSource.setHongSC(newHongSC.nickname);
  }
}
