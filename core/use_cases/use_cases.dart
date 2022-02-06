import 'package:dartz/dartz.dart';
import 'package:entity/entity.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_demo/features/co/data/models/params/login_params.dart';

import 'error_model.dart';

abstract class UseCase<DataEntity extends Entity, Params extends ParamsModel> {
  Future<Either<ErrorEntity, DataEntity>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
