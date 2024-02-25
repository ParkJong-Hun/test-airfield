import 'package:test_airfield/infrastructure/data_source/local_data_source.dart';
import 'package:test_airfield/infrastructure/wrapper/hong_repository_wrapper.dart';

import '../model/hong_sc.dart';

class HongRepository {
  final LocalDataSource _localDataSource;

  HongRepository(this._localDataSource);

  Future<HongSC> getHongSC() async {
    final String hongSCRaw = await _localDataSource.getHongSC();
    return hongSCRaw.toDomainModel();
  }

  void setHongSC(HongSC newHongSC) {
    return _localDataSource.setHongSC(newHongSC.toString());
  }
}
