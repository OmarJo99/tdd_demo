import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_demo/features/co/data/models/params/login_params.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountInitial()) {
    on<LoginEvent>(logIn);
  }
}

logIn(event, emit) async {
  emit(AccountLoading());
  var res =
      await LogInUseCase(getIt<IAccountRepository>()).call(event.logInParams);

  emit(res.fold((l) => AccountError(l.message ?? ''),
      (r) => LogInLoaded(logInEntity: r)));
}


//هنا يتم إنشاء 