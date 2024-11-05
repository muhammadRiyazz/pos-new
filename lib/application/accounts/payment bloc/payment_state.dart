part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
 factory PaymentState(
      {required bool isLoading,
      required int isError,
      required bool addpayment 
      
      }) = _PaymentState;
  factory PaymentState.initial() {
    return PaymentState(isError: 0, isLoading: false,addpayment: false);
  }
}
