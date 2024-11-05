part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.payment({required AccountsInsertModel model}) = Payment;
    const factory PaymentEvent.clearprint() = Clearprint;

    const factory PaymentEvent.paymentbillprint({required Customerslist customer ,required bool sunmi}) = Paymentbillprint;

  
}
