class ResponseModel {
  bool? success;
  String? message;
  dynamic data;
  int? statusCode;

  ResponseModel({this.success, this.message, this.data, this.statusCode});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    message = json['Message'];
    data = json['Data'];
    statusCode = json['StatusCode'];
  }
}
