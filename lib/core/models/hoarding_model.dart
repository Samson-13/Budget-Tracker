import 'package:freezed_annotation/freezed_annotation.dart';

part 'hoarding_model.freezed.dart';
part 'hoarding_model.g.dart';

@freezed
class HoardingModel with _$HoardingModel {
  const factory HoardingModel({
    required int id,
    required String hoardingName,
    required String location,
    required String hoardingNumber,
    required String size,
    required bool available,
  }) = _HoardingModel;

  factory HoardingModel.fromJson(Map<String, dynamic> json) =>
      _$HoardingModelFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
