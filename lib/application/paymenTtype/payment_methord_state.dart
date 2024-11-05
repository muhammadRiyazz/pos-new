part of 'payment_methord_bloc.dart';

@freezed
class PaymentMethordState with _$PaymentMethordState {
  factory PaymentMethordState({
    required List<String> paymenbtTypes,
  }) = _PaymentMethordState;
  factory PaymentMethordState.initial() {
    return PaymentMethordState(
      paymenbtTypes: [],
    );
  }
}
