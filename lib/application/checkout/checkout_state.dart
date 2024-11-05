part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  factory CheckoutState({
    required bool isLoading,
    required int outodstock,
    required int vanstock,
    required bool isLoadingvan,
    required List<Stocklist> outofstocklist,
  }) = _CheckoutState;
  factory CheckoutState.initial() {
    return CheckoutState(
        vanstock: 0,
        isLoadingvan: false,
        outofstocklist: [],
        isLoading: false,
        outodstock: 0);
  }
}
