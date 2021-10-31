import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 0, 142, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.3943200);
    paint0.shader = ui.Gradient.linear(Offset(size.width*0.50,size.height*0.40),Offset(size.width*0.50,size.height),[Color(0xffeb582d),Color(0xffe76f30),Color(0xffe5752d),Color(0xffed870f)],[0.00,0.44,0.57,1.00]);
    path0.quadraticBezierTo(size.width*0.0111667,size.height*0.4904600,size.width*0.1666667,size.height*0.4960000);
    path0.cubicTo(size.width*0.3300000,size.height*0.4960000,size.width*0.6641667,size.height*0.4960000,size.width*0.8300000,size.height*0.4960000);
    path0.quadraticBezierTo(size.width*1.0004333,size.height*0.5021000,size.width,size.height*0.6000000);
    path0.lineTo(size.width,size.height);
    path0.lineTo(0,size.height);

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}






