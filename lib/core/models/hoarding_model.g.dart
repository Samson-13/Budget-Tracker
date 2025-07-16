// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hoarding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HoardingModel _$HoardingModelFromJson(Map<String, dynamic> json) =>
    _HoardingModel(
      id: (json['id'] as num).toInt(),
      hoardingName: json['hoardingName'] as String,
      location: json['location'] as String,
      hoardingNumber: json['hoardingNumber'] as String,
      size: json['size'] as String,
      available: json['available'] as bool,
    );

Map<String, dynamic> _$HoardingModelToJson(_HoardingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hoardingName': instance.hoardingName,
      'location': instance.location,
      'hoardingNumber': instance.hoardingNumber,
      'size': instance.size,
      'available': instance.available,
    };
