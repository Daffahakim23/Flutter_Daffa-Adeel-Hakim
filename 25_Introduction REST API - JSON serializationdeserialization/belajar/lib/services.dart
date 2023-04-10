import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyService {
  final Dio dio = Dio();

  Future fetchUsers() async {
    try {
      final Response response = await dio.get()
    }
  }
}
