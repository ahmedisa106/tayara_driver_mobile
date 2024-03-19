import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';


class ShimmerHelper {
  static final Color _shimmerBase = Colors.grey.shade300;
  static final Color _shimmerHighlighted = Colors.grey.shade100;

  buildBasicShimmer({double height = double.infinity, double width = double.infinity}) {
    return Shimmer.fromColors(
      baseColor: _shimmerBase,
      highlightColor: _shimmerHighlighted,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }

  buildSliderShimmer({itemCount = 10,double? height}) {
    return SizedBox(
      height: height ?? 100,
      child: ListView.separated(
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Shimmer.fromColors(
              baseColor: _shimmerBase,
              highlightColor: _shimmerHighlighted,
              child: Container(
                height: 250,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            // width: 5,
          );
        },
      ),
    );
  }

  buildProductShimmer({
    scontroller,
    itemCount = 100,
    double? height
  }) {
    return ListView.separated(
      itemCount: itemCount,
      controller: scontroller,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Shimmer.fromColors(
            baseColor: _shimmerBase,
            highlightColor: _shimmerHighlighted,
            child: Container(
              height:height?? 170.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x102c3e50),
                    offset: Offset(0, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 5,
        );
      },
    );
  }

  buildImagesLoadingShimmer({height,width,paddingHorizontal}) {
    return  SizedBox(
        height: height, width: width  ,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: paddingHorizontal??0),
          child: Shimmer.fromColors(
            baseColor: _shimmerBase,
            highlightColor: _shimmerHighlighted,
            child: Container(
              height: 55, width: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x102c3e50),
                    offset: Offset(0, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
