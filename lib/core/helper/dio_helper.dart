import 'dart:developer';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:tayara_driver_mobile/core/helper/preference/shared_prafrance_manager.dart';
import 'package:tayara_driver_mobile/core/helper/preference/shared_preference_keys.dart';
import '../../modules/screens/connection_screen.dart';
import '../../modules/screens/splash_screen.dart';
import '../../utils/app_constants.dart';
import '../../utils/go_to.dart';
import '../network/connection_status.dart';
import 'apis_routes.dart';

class DioHelper {
  static Dio dio = Dio();

  static void init() {
    dio = Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          "Accept": "application/json"
        },
        baseUrl: ApiRoutes.baseUrl,
        connectTimeout: const Duration(milliseconds: 80000),
        sendTimeout: const Duration(milliseconds: 80000),
        receiveTimeout: const Duration(milliseconds: 80000),
        receiveDataWhenStatusError: true,
        validateStatus: (state) => state! < 500,
        contentType: 'application/json',
      ),
    );
    // dio.interceptors.add(CustomInterceptors());
    dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        error: true,
        requestBody: true,
        requestHeader: true,
        request: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    bool isAuthorizationHeader = false,
  }) async {
    Response response = Response(
        requestOptions: RequestOptions(
      path: '',
    ));
    String language = await SharedPreferenceManager().getData('language_code') ?? 'en';
    final firebaseMessaging = FirebaseMessaging.instance;
    String? token = await firebaseMessaging.getToken();
    dio.options.headers = AppConstants.userData?.data?.token != null
        ? {
            "Authorization": "Bearer ${AppConstants.userData?.data?.token}",
            "Content-Type": "application/json",
            "Accept": "application/json",
            "lang": language,
            "fcm-token": token
          }
        : {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "lang": language,
            "fcm-token": token
          };
    if (response.statusCode == 403) {
      // AppConstants.userData = null;
      await SharedPreferenceManager()
          .deleteData(SharedPreferenceKeys.accountData);
      GoTo.screen(const SplashScreen());
    }
    if (!await ConnectionStatus.getInstance().checkConnection()) {
      GoTo.screenAndRemoveUntil(const ConnectionScreen());

      return response;
    } else {
      try {
        log("url");
        log(url);
        final response = await dio.get(
          url,
          queryParameters: query,
          //dio error 401
          options: Options(
              followRedirects: false, //new add error dio 302
              validateStatus: (state) {
                if (state == 403) {
                  AppConstants.userData = null;
                  SharedPreferenceManager()
                      .deleteData(SharedPreferenceKeys.accountData);
                  GoTo.screen(const SplashScreen());
                  return false;
                } else {
                  return true;
                }
              }),
        );
        log(response.data.toString());
        return response;
      } on SocketException {
        throw Exception(["Please check your internet connection"]);
      }
    }
  }

  static Future postData({
    required String url,
    Map<String, dynamic>? data,
    bool isAuthorizationHeader = false,
  }) async {
    String language = await SharedPreferenceManager().getData('language_code');
    final firebaseMessaging = FirebaseMessaging.instance;
    String? token = await firebaseMessaging.getToken();
    dio.options.headers = AppConstants.userData?.data?.token != null
        ? {
            "Authorization": "Bearer ${AppConstants.userData?.data?.token}",
            "Content-Type": "application/json",
            "Accept": "application/json",
            "lang": language,
            "fcm-token": token
          }
        : {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "lang": language,
            "fcm-token": token
          };
    Response response = Response(
        requestOptions: RequestOptions(
      path: '',
    ));
    if (!await ConnectionStatus.getInstance().checkConnection()) {
      GoTo.screenAndRemoveUntil(const ConnectionScreen());
      return response;
    } else {
      try {
        log(url);
        log(data.toString());
        return dio.post(url,
            data: data,
            options: Options(
              followRedirects: false, //new add error dio 302
              validateStatus: (state) {
                if (state == 403) {
                  AppConstants.userData = null;
                  SharedPreferenceManager()
                      .deleteData(SharedPreferenceKeys.accountData);
                  GoTo.screen(const SplashScreen());
                  return false;
                } else {
                  return true;
                }
              },
            ));
      } on SocketException {
        throw Exception(["Please check your internet connection"]);
      }
    }
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    bool isAuthorizationHeader = false,
  }) async {
    String language = await SharedPreferenceManager().getData('language_code');
    final firebaseMessaging = FirebaseMessaging.instance;
    String? token = await firebaseMessaging.getToken();
    dio.options.headers = AppConstants.userData?.data?.token != null
        ? {
            "Authorization": "Bearer ${AppConstants.userData?.data?.token}",
            "Content-Type": "application/json",
            "Accept": "application/json",
            "lang": language,
            "fcm-token": token
          }
        : {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "lang": language,
            "fcm-token": token
          };
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future uploadFile({
    required String url,
    required filePath,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      "language": "en",
      // AppConstants.accountData!.data!.accessToken != null
      //     ? "Authorization"
      //     : "Bearer ${AppConstants.accountData!.data!.accessToken}": null
    };

    try {
      log(url);
      return dio.post(url,
          data: FormData.fromMap({
            "File": await MultipartFile.fromFile(filePath),
          }),
          options: Options(
            followRedirects: false, //new add error dio 302
            validateStatus: (state) => state! < 500,
          ));
    } on SocketException {
      throw Exception(["Please check your internet connection"]);
    }
  }

  static Future<Response> deleteData({
    required String url,
    // required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    bool isAuthorizationHeader = false,
  }) async {
    String language = await SharedPreferenceManager().getData('language_code');
    final firebaseMessaging = FirebaseMessaging.instance;
    String? token = await firebaseMessaging.getToken();
    dio.options.headers = AppConstants.userData?.data?.token != null
        ? {
            "Authorization": "Bearer ${AppConstants.userData?.data?.token}",
            "Content-Type": "application/json",
            "Accept": "application/json",
            "lang": language,
            "fcm-token": token
          }
        : {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "lang": language,
            "fcm-token": token
          };
    return dio.delete(
      url,
      queryParameters: query,
      // data: data,
    );
  }

// static Future<GlobalHttpResponse> postFile(url,
//     {body, contentTypeHeader, bool isAuthorizationHeader = false}) async {
//   var dio = Dio();
//
//   Response? response;
//   response = await dio.post<String>(
//     url,
//     data: body,
//     options: Options(
//         headers: (isAuthorizationHeader)
//             ? {
//                 // "Authorization":
//                 //     "Bearer ${AppConstants.accountData!.data!.accessToken}",
//                 "Accept": "application/json"
//               }
//             : {"Accept": "application/json"},
//         contentType: contentTypeHeader,
//         receiveDataWhenStatusError: false,
//         followRedirects: false,
//         sendTimeout: 50000,
//         validateStatus: (stats) {
//           if (kDebugMode) {
//             print(stats);
//           }
//           return true;
//         }),
//   );
//
//   String responseBody = response.data.toString();
//
//   if (kDebugMode) {
//     print("Response Of Get :: $responseBody");
//   }
//
//   return GlobalHttpResponse(
//       statusCode: response.statusCode, body: responseBody);
// }
}
