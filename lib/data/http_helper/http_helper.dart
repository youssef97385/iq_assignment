import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:iq_sample_app/core/constent.dart';
import 'package:iq_sample_app/core/error.dart';
import 'package:iq_sample_app/model/category_item_model/category_item_model.dart';
import 'package:iq_sample_app/model/home_response_model/home_response_model.dart';
import 'package:iq_sample_app/model/section_model/section_model.dart';

import 'package:iq_sample_app/model/serializer/serializer.dart';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'Ihttp_helper.dart';

import 'dart:io';
import 'package:path/path.dart';
import 'package:cookie_jar/cookie_jar.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;

  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
  }



  @override
  Future<bool> checkInternetConnection() async{
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected $result');
      }
    } on SocketException catch (_) {
      print('not connected');
    }
  }

  @override
  Future<BuiltList<SectionModel>> getHomeSections() async{
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get(HOME_API);

      var res = jsonDecode(response.data);

      // print("json prnt ${res[0]["sections"]}");
      print('home StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        final BuiltList<HomeResponseModel> baseResponse =
        serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(
              BuiltList,
              [
                const FullType(
                    HomeResponseModel
                ),
              ],
            ));

        print("address data : ${baseResponse[0].sections}");

        return baseResponse[0].sections;
        // if (baseResponse != null) {
        //   return baseResponse.data;
        // } else {
        //   throw NetworkException();
        // }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print("http error $e");
      throw NetworkException();
    }

  }
}
