import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final String? message;
  final String? statusCode;
  const ErrorModel({this.message, this.statusCode});
  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        message: json['message'],
        statusCode: json['statusCode'],
      );

  @override
  List<Object?> get props => [message, statusCode];
}
