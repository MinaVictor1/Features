import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Ui'),
      ),
      body: Column(
        children: [
          Container(
            width: 200.w, //===> in width (.w)
            height: 200.h, //===> in height use (.h)
            color: Colors.amber,
            child: Text(
              'Al Ahly',
              style: TextStyle(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w800), //===> in font size use (.sp)
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          Container(
            width: 200.w, //===> in width (.w)
            height: 200.h, //===> in height use (.h)
            color: Colors.blue,
            child: Text(
              'Abo Trika',
              style: TextStyle(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w800), //===> in font size use (.sp)
            ),
          ),
        ],
      ),
    );
  }
}
