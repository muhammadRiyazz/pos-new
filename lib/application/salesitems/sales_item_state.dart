part of 'sales_item_bloc.dart';

@freezed
class SalesItemState with _$SalesItemState {
  factory SalesItemState(
      {required bool isLoading,
      required bool isError,
          required List<String> reasonlist,

      required List<Stocklist> items,
      required List<Catagory> cata,
      required List<Stocklist> toBillItems,
      required String selectedCata,
      required List mrp,
      int? tempMrp,
      int? index,
      required int qty}) = _SalesItemState;
  factory SalesItemState.initial() {
    return SalesItemState(
        isError: false,
        isLoading: false,
        // toBillItemsSum: '00000',
        items: [],reasonlist: [],
        cata: [],
        qty: 0,
        selectedCata: '',
        toBillItems: [],
        mrp: []);
  }
}
