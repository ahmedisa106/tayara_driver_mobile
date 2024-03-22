import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

import '../Utils/color_manager.dart';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class Tools {
  static showToast({
    required String message,
    required bool isSuccess,
    required BuildContext context,
  }) {
    var fToast = FToast().init(context);
    return fToast.showToast(
      gravity: ToastGravity.BOTTOM,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
        decoration: BoxDecoration(
          color: isSuccess ? Colors.green : Colors.redAccent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SizedBox(
          width: 80.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSuccess ? Icons.check : Icons.clear,
                color: Colors.white,
              ),
              const SizedBox(
                width: 6,
              ),
              SizedBox(
                width: 70.w,
                child: Text(
                  message,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static loader() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  //Change Date Picker Theme Data
  static Theme selectDateTime(context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: ColorManager.primaryColor, //
            onPrimary: ColorManager.white, //selected text color
            onSurface: ColorManager.primaryColor, //color header and day text
            background: ColorManager.white,
          ),
          dialogTheme: const DialogTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)))),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ), // color of button's letters
              backgroundColor: ColorManager.primaryColor,
              // Background color
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Colors.transparent,
                    width: 1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
        child: child!,
      );
}





class MapsLauncher {
  /// Returns a [Uri] that can be launched on the current platform
  /// to open a maps application showing the result of a search query.
  static Uri createQueryUri(String query) {
    Uri uri;

    if (kIsWeb) {
      uri = Uri.https(
          'www.google.com', '/maps/search/', {'api': '1', 'query': query});
    } else if (Platform.isAndroid) {
      uri = Uri(scheme: 'geo', host: '0,0', queryParameters: {'q': query});
    } else if (Platform.isIOS) {
      uri = Uri.https('maps.apple.com', '/', {'q': query});
    } else {
      uri = Uri.https(
          'www.google.com', '/maps/search/', {'api': '1', 'query': query});
    }

    return uri;
  }

  /// Returns a [Uri] that can be launched on the current platform
  /// to open a maps application showing coordinates ([latitude] and [longitude]).
  static Uri createCoordinatesUri(double latitude, double longitude,
      [String? label]) {
    Uri uri;

    if (kIsWeb) {
      uri = Uri.https('www.google.com', '/maps/search/',
          {'api': '1', 'query': '$latitude,$longitude'});
    } else if (Platform.isAndroid) {
      var query = '$latitude,$longitude';

      if (label != null) query += '($label)';

      uri = Uri(scheme: 'geo', host: '0,0', queryParameters: {'q': query});
    } else if (Platform.isIOS) {
      var params = {
        'll': '$latitude,$longitude',
        'q': label ?? '$latitude, $longitude',
      };

      uri = Uri.https('maps.apple.com', '/', params);
    } else {
      uri = Uri.https('www.google.com', '/maps/search/',
          {'api': '1', 'query': '$latitude,$longitude'});
    }

    return uri;
  }

  /// Launches the maps application for this platform.
  /// The maps application will show the result of the provided search [query].
  /// Returns a Future that resolves to true if the maps application
  /// was launched successfully, false otherwise.
  static Future<bool> launchQuery(String query) {
    return launchUrl(createQueryUri(query));
  }

  /// Launches the maps application for this platform.
  /// The maps application will show the specified coordinates.
  /// Returns a Future that resolves to true if the maps application
  /// was launched successfully, false otherwise.
  static Future<bool> launchCoordinates(double latitude, double longitude,
      [String? label]) {
    return launchUrl(createCoordinatesUri(latitude, longitude, label));
  }
}
