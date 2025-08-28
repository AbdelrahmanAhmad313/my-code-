import 'package:dio/dio.dart';
// FIX: Removed unused imports to avoid potential tree-shake or analyzer warnings
// import 'package:flutter/material.dart';
// import 'package:myapp/hagz/adding_field.dart';

class DioHelper{
  static final _dio =Dio(
    BaseOptions(
      baseUrl: "https://thimar.amr.amit-d.com/api"
    )
  );

   static Future<CustomResponse> get(String path) async {
    try{
      final response = await _dio.get(path);
      return CustomResponse(isSuccess:true,data:response.data);
    }
    on DioException catch(ex){
      return CustomResponse(isSuccess: false,message: ex.type.name);
    }
  }

  static void send(){

  }
}
class CustomResponse{
  final bool isSuccess;
  final data;
  final String? message;
  CustomResponse({required this.isSuccess,this.message,this.data});

}