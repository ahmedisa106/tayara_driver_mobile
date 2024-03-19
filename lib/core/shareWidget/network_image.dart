import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/assets_manager.dart';
import '../Helper/apis_routes.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    Key? key,
    required this.image,
     this.width,
     this.height,
  }) : super(key: key);
  final String image;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image != "null" ? "${ApiRoutes.baseUrl}$image" : "",
      placeholder: (context, url) => Image(
        image: const AssetImage(AppAssets.logo),
        height: height,
        fit: BoxFit.fill,
        width: width,
      ),
      errorWidget: (context, url, error) => Image(
        image: const AssetImage(AppAssets.logo),
        height: height,
        fit: BoxFit.fill,
        width: width,
      ),
      height: height,
      fit: BoxFit.fill,
      width: width,
    );
  }
}
