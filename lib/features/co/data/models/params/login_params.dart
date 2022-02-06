import 'package:equatable/equatable.dart';

abstract class ParamsModel<BodyModelType extends BaseBodyModel>
    extends Equatable {
  final BodyModelType? body;

  /// set this to override base url
  final String? baseUrl;

  /// add additional headers to request here
  Map<String, String>? get additionalHeaders;

  /// type of request : [RequestType.POST] or [RequestType.GET]

  /// [url] to api endpoint (without base url)
  /// not url is without page number or length
  /// you should fill base_url property in base provider
  String? get url;

  /// query parameters to be included in url
  Map<String, String> get urlParams;

  ParamsModel({this.body, this.baseUrl});
}

class LoginParams extends ParamsModel<LogInParamsBody> implements Equatable {
  @override
  Map<String, String?> get addititonalHeaders => {};

  @override
  bool? get stringify => throw UnimplementedError();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement additionalHeaders
  Map<String, String>? get additionalHeaders => throw UnimplementedError();

  @override
  // TODO: implement url
  String? get url => throw UnimplementedError();

  @override
  // TODO: implement urlParams
  Map<String, String> get urlParams => throw UnimplementedError();
}

abstract class BaseBodyModel {
  Map<String, dynamic> toJson();
}

class LogInParamsBody extends BaseBodyModel {
  final String? userName;
  final String? password;

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'password': password,
    };
  }

  LogInParamsBody({
    this.userName,
    this.password,
  });
}
