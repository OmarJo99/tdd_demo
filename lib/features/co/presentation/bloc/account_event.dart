part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();
}

class LoginEvent extends AccountEvent {
  final LoginParams? loginParams;

  LoginEvent({required this.loginParams});

  @override
  List<Object?> get props => [loginParams];
}

//here we create event for login app page from AccountEvent
