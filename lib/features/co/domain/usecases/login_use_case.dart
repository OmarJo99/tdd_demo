import 'package:dartz/dartz.dart';
import 'package:entity/entity.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_demo/features/co/data/models/params/login_params.dart';

class LogInUseCase extends UseCase<LogInEntity, LogInParams> {
  IAccountRepository repository;

  LogInUseCase(this.repository);

  @override
  Future<Either<ErrorEntity, LogInEntity>> call(LogInParams params) async {
    return repository.logIn(params);
  }
}
