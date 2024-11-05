part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required bool isLoading,
    required bool isError,
  }) = _ProfileState;
  factory ProfileState.initial() {
    return ProfileState(
      isError: false,
      isLoading: false,
    );
  }
}
