import 'package:dartz/dartz.dart';

abstract class IAccountRepository extends IRepository {
  Future<Either<ErrorEntity, >> logIn(LogInParams model);
  Future<Either<ErrorEntity, RegisterEntity>> register(RegisterParams model);
}
