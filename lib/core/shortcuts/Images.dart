import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class appImages extends StatelessWidget {
  final String path;
  final double? hight, width;
  final BoxFit fit;

  const appImages({
    super.key,
    required this.path,
    this.hight,
    this.width,
    this.fit = BoxFit.scaleDown,
  });

  @override
  Widget build(BuildContext context) {
    if (path.startsWith("http")) {
      return Image.network(
        path,
        height: hight,
        width: width,
        fit: fit,
        errorBuilder: _errorWidget,
      );
    } else if (path.endsWith("svg")) {
      return SvgPicture.asset(
        "assets/svg/$path",
        height: hight,
        width: width,
        fit: fit,

      );
    }
    return Image.asset(
      "assets/images/$path",
      height: hight,
      width: width,
      fit: fit,
      errorBuilder:  _errorWidget,
    );
  }
  Widget _errorWidget(context, error, stackTrace){
    return Container(
      height: hight,
      width: width,
      child: Center(child: Text("404")),
    );
  }
}
