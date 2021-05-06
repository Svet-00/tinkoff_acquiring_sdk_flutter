// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tinkoff_acquiring_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TinkoffError _$TinkoffErrorFromJson(Map<String, dynamic> json) {
  return TinkoffError(
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$TinkoffErrorToJson(TinkoffError instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

TinkoffAcquiringInitializationResponse
    _$TinkoffAcquiringInitializationResponseFromJson(
        Map<String, dynamic> json) {
  return TinkoffAcquiringInitializationResponse(
    status: _$enumDecode(
        _$TinkoffAcquiringInitializationStatusEnumMap, json['status']),
    error: json['error'] as String?,
  );
}

Map<String, dynamic> _$TinkoffAcquiringInitializationResponseToJson(
        TinkoffAcquiringInitializationResponse instance) =>
    <String, dynamic>{
      'status': _$TinkoffAcquiringInitializationStatusEnumMap[instance.status],
      'error': instance.error,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TinkoffAcquiringInitializationStatusEnumMap = {
  TinkoffAcquiringInitializationStatus.NOT_INITIALIZED: 'NOT_INITIALIZED',
  TinkoffAcquiringInitializationStatus.RESULT_OK: 'RESULT_OK',
  TinkoffAcquiringInitializationStatus.RESULT_ERROR: 'RESULT_ERROR',
  TinkoffAcquiringInitializationStatus.GOOGLE_PAY_NOT_AVAILABLE:
      'GOOGLE_PAY_NOT_AVAILABLE',
  TinkoffAcquiringInitializationStatus.FLUTTER_NOT_INITIALIZED:
      'FLUTTER_NOT_INITIALIZED',
  TinkoffAcquiringInitializationStatus.PLUGIN_ALREADY_INITIALIZED:
      'PLUGIN_ALREADY_INITIALIZED',
};

TinkoffCommonResponse _$TinkoffCommonResponseFromJson(
    Map<String, dynamic> json) {
  return TinkoffCommonResponse(
    status: _$enumDecodeNullable(
        _$TinkoffAcquiringCommonStatusEnumMap, json['status']),
    cardId: json['cardId'] as String?,
    paymentId: json['paymentId'] as int?,
    rebillId: json['rebillId'] as String?,
    error: json['error'] as String?,
  );
}

Map<String, dynamic> _$TinkoffCommonResponseToJson(
        TinkoffCommonResponse instance) =>
    <String, dynamic>{
      'status': _$TinkoffAcquiringCommonStatusEnumMap[instance.status],
      'cardId': instance.cardId,
      'paymentId': instance.paymentId,
      'rebillId': instance.rebillId,
      'error': instance.error,
    };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$TinkoffAcquiringCommonStatusEnumMap = {
  TinkoffAcquiringCommonStatus.RESULT_OK: 'RESULT_OK',
  TinkoffAcquiringCommonStatus.RESULT_CANCELLED: 'RESULT_CANCELLED',
  TinkoffAcquiringCommonStatus.RESULT_NONE: 'RESULT_NONE',
  TinkoffAcquiringCommonStatus.RESULT_ERROR: 'RESULT_ERROR',
  TinkoffAcquiringCommonStatus.ERROR_NOT_INITIALIZED: 'ERROR_NOT_INITIALIZED',
  TinkoffAcquiringCommonStatus.ERROR_NO_ACTIVITY: 'ERROR_NO_ACTIVITY',
};
