part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.fetch({required String sDate,required String eDate,}) = FetchTotalSaleReports;
  const factory ReportEvent.fetchReturns({required String sDate,required String eDate,}) = FetchTotalSaleReturnReports;
  const factory ReportEvent.todayreport() = Todayreport;



}
