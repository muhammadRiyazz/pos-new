part of 'appentyno_bloc.dart';

@freezed
class AppentynoState with _$AppentynoState {
 factory AppentynoState({
  required String data
  }) = _AppentynoState;
  factory AppentynoState.initial() {
    return AppentynoState(

data: ''
      );
  }}
