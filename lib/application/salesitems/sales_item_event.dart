part of 'sales_item_bloc.dart';

@freezed
class SalesItemEvent with _$SalesItemEvent {
  const factory SalesItemEvent.started() = ItemsList;
  const factory SalesItemEvent.toBillList() = FetchToBillList;
  const factory SalesItemEvent.clearingState({required Stocklist product}) =
      Clearing;
  const factory SalesItemEvent.quantity(
      {required int id, required bool increment}) = Quantity;
  const factory SalesItemEvent.quantityFromBSheet(
      {required int id,
      required double newItemAmt,
      required int qty}) = QuantityFromBSheet;
  const factory SalesItemEvent.itemFromBSheet({
  required Stocklist product,
  required int qty,
  String? reason, // Optional parameter
}) = ItemFromBSheet;

  const factory SalesItemEvent.search({
    required String cata,
    required String query,
  }) = SearchItem;

  const factory SalesItemEvent.clearingToBill() = ClearingToBillList;
  // ---------------------------------------------------------------------------------------

  const factory SalesItemEvent.itemAddToBil(
      {required Stocklist product, required bool increment}) = AddToBill;
        const factory SalesItemEvent.fetchreasone() = Fetchreasone;

}
