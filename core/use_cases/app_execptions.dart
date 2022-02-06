import 'package:equatable/equatable.dart';

class AppException extends Equatable implements Exception {
  final _message;

  String? get message => _message;
  final data;

  AppException(this.data, [this._message]);

  String toString() {
    return "$_message";
  }

  @override
  List<Object?> get props => [_message, data];
}
