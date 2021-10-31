import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 0, 142, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(Offset(size.width*0.50,0),Offset(size.width*0.50,size.height*0.40),[Color(0xfff45e19),Color(0xfff8994d)],[0.00,1.00]);

    Path path0 = Path();
    path0.moveTo(size.width*0.1000000,size.height*0.4000000);
    path0.lineTo(size.width*0.9000000,size.height*0.4000000);
    path0.quadraticBezierTo(size.width*1.0013667,size.height*0.4003200,size.width,size.height*0.3414200);
    path0.quadraticBezierTo(size.width,size.height*0.2695650,size.width,0);
    path0.lineTo(0,0);
    path0.quadraticBezierTo(0,size.height*0.2685000,0,size.height*0.3400000);
    path0.quadraticBezierTo(size.width*-0.0023333,size.height*0.3997800,size.width*0.1000000,size.height*0.4000000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
