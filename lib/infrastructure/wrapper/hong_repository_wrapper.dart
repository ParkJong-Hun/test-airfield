import '../../domain/model/hong_sc.dart';

extension StringToHongSCWrapper on String {
  HongSC toDomainModel() {
    return HongSC(nickname: this);
  }
}

extension HongSCToStringWrapper on HongSC {
  String toDataModel() {
    return nickname;
  }
}
