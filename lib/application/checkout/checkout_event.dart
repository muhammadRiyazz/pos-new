part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.checkout({required List<Stocklist> selectedstock}) = Checkout;
    const factory CheckoutEvent.vanstockcheck({required String productid}) = Vanstockcheck;

}