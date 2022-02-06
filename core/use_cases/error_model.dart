import 'app_execptions.dart';
import 'base_reponse.dart';

class ErrorEntity extends BaseEntity {
  int? code;
  String? message;
  String? details;
  List<String>? validationErrors = [];

  ErrorEntity({this.code, this.message, this.details, this.validationErrors});

  ErrorEntity.fromJson(Map<String, dynamic> parsedJson)
      : super.fromJson(parsedJson) {
    // code = parsedJson['code'];
    // message = parsedJson['message'];
    // details = parsedJson['details'];
    if (parsedJson['error_description'] != null) {
      var error = parsedJson['error_description'];
      if (error is List && error.length > 0)
        for (int i = 0; i < error.length; i++) {
          validationErrors?.add(error[i]);
        }
    }
  }

  ErrorEntity.fromException(AppException exception) {
    message = exception.message;
    print(exception.data);
    // // code = parsedJson['code'];
    // // message = parsedJson['message'];
    // // details = parsedJson['details'];
    // if (parsedJson['error_description'] != null) {
    //   var error = parsedJson['error_description'];
    //   if(error is List && error.length > 0)
    //     for (int i = 0; i < error.length; i++) {
    //       validationErrors?.add(error[i]);
    //     }
    // }
  }

  @override
  fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}
