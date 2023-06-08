part of 'signin_page_bloc.dart';

// abstract class SigninPageState extends Equatable {
//   const SigninPageState();
// }
//
// class SigninPageInitial extends SigninPageState {
//   @override
//   List<Object> get props => [];
// }
//
// class LoadingState extends SigninPageState {
//   @override
//   List<Object> get props => [];
// }
//
// class SuccessState extends SigninPageState {
//   @override
//   List<Object> get props => [];
// }
//
// class ErrorState extends SigninPageState {
//   @override
//   List<Object> get props => [];
// }

enum SigninPageStatus { initial, success, failure, loading }

class SigninPageState extends Equatable {
  const SigninPageState({
    this.status = SigninPageStatus.initial,
    this.errorMessage = '',
  });

  final SigninPageStatus status;
  final String errorMessage;

  SigninPageState copyWith({
    SigninPageStatus? status,
    String? errorMessage,
  }) {
    return SigninPageState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, errorMessage];
}
