import 'package:flutter/cupertino.dart';

////// Clipper Class for Upper Container or Sign Up //////////

class CustomUpClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var h=size.height;
    var w= size.width;
    final path=Path();
    path.lineTo(0, h);
    // path.lineTo(w, h);
    path.quadraticBezierTo(w*0.5, h-110, w,h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


////// Clipper Class for Bottom Sheet or Login //////////


class CustomBottomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var h=size.height;
    var w= size.width;
    final path=Path();
    path.moveTo(0, 60);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 60);
    path.quadraticBezierTo(w*0.5, -60, 0,60);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}