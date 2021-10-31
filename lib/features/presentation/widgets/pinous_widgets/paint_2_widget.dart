

import 'package:flutter/material.dart';
import 'dart:ui'as ui;

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 0, 142, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(Offset(size.width*0.50,0),Offset(size.width*0.50,size.height*0.48),[Color(0xfff06119),Color(0xffe9752c)],[0.00,1.00]);

    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height*0.4800000);
    path0.quadraticBezierTo(size.width*0.0229000,size.height*0.3972200,size.width*0.1666667,size.height*0.4000000);
    path0.quadraticBezierTo(size.width*0.3750000,size.height*0.4000000,size.width,size.height*0.4000000);
    path0.lineTo(size.width,0);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
