import 'package:flutter/material.dart';
import 'package:test_project/features/presentation/widgets/pinous_widgets/paint_widget.dart';

class FocusOnYourLessonEasilyPage extends StatelessWidget {
  const FocusOnYourLessonEasilyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 35,
            child: Container(width: 300, height: 300, child: Image.asset("lib/assets/FocusOnYourLessonEasily.png")),
          ),
          Positioned(
            child: Container(
              child: CustomPaint(
                size: Size(1000, (1000 * 2).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ),
          ),
          Positioned(
            left: 80,
            right: 60,
            bottom: 30,
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Text(
                  "Focus on Your Lesson Easily", maxLines: 1, textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "With options such as subject, question and essay solution, you can set your timer and make it easier to focus on the lesson!", maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
