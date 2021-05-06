import 'package:json_annotation/json_annotation.dart';

part 'tinkoff_acquiring_models.g.dart';

/// Common data structure used when SDK errors out
@JsonSerializable()
class TinkoffError extends Error {
  final String message;

  TinkoffError({required this.message});

  @override
  String toString() {
    return 'TinkoffError{message: $message}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TinkoffError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => message.hashCode;

  factory TinkoffError.fromJson(Map<String, dynamic> json) =>
      _$TinkoffErrorFromJson(json);
  Map<String, dynamic> toJson() => _$TinkoffErrorToJson(this);
}

/// Internal.
enum TinkoffAcquiringInitializationStatus {
  NOT_INITIALIZED,
  RESULT_OK,
  RESULT_ERROR,
  GOOGLE_PAY_NOT_AVAILABLE,
  FLUTTER_NOT_INITIALIZED,
  PLUGIN_ALREADY_INITIALIZED
}

/// Internal.
@JsonSerializable()
class TinkoffAcquiringInitializationResponse {
  final TinkoffAcquiringInitializationStatus status;
  final String? error;

  TinkoffAcquiringInitializationResponse({required this.status, this.error});

  @override
  String toString() {
    return 'TinkoffAcquiringInitializationResponse{status: $status, error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TinkoffAcquiringInitializationResponse &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          error == other.error;

  @override
  int get hashCode => status.hashCode ^ error.hashCode;

  factory TinkoffAcquiringInitializationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TinkoffAcquiringInitializationResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TinkoffAcquiringInitializationResponseToJson(this);
}

/// Common enum with generalized SDK method status responses
enum TinkoffAcquiringCommonStatus {
  RESULT_OK,
  RESULT_CANCELLED,
  RESULT_NONE,
  RESULT_ERROR,
  ERROR_NOT_INITIALIZED,
  ERROR_NO_ACTIVITY
}

/// Common structure with generalized SDK method data responses
@JsonSerializable()
class TinkoffCommonResponse {
  final TinkoffAcquiringCommonStatus? status;
  final String? cardId;
  final int? paymentId;
  final String? rebillId;
  final String? error;

  TinkoffCommonResponse(
      {this.status, this.cardId, this.paymentId, this.rebillId, this.error});

  @override
  String toString() {
    return 'TinkoffCommonResponse{status: $status, cardId: $cardId, paymentId: $paymentId, rebillId: $rebillId, error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TinkoffCommonResponse &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          cardId == other.cardId &&
          paymentId == other.paymentId &&
          rebillId == other.rebillId &&
          error == other.error;

  @override
  int get hashCode =>
      status.hashCode ^
      cardId.hashCode ^
      paymentId.hashCode ^
      rebillId.hashCode ^
      error.hashCode;

  factory TinkoffCommonResponse.fromJson(Map<String, dynamic> json) =>
      _$TinkoffCommonResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TinkoffCommonResponseToJson(this);
}

/// Common enum used to select card check type
enum TinkoffCheckType { NO, HOLD, THREE_DS, THREE_DS_HOLD }

/// Common enum used to select dark mode
enum TinkoffDarkThemeMode { DISABLED, ENABLED, AUTO }

/// Common enum used to select language
enum TinkoffLanguage { RU, EN }
