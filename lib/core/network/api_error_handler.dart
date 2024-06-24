class ErrorHandler {
  final String? message;
  final int? code;

  ErrorHandler({this.message, this.code});

  factory ErrorHandler.fromJson(Map<String, dynamic> json) {
    return ErrorHandler(
      message: json['message'],
      code: json['code'],
    );
  }
}