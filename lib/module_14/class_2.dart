// .w --------width
// .h --------Height
// .r -------- min of .w and .h
// .sp ------- font or text

import 'package:flutter/material.dart';
import 'package:flutter_batch_12/app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResPkg extends StatelessWidget {
  const ResPkg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // width: 200.r == min(200.w,200.h),
                // height: 100.r === == min(100.w,100.h),

                width: 200.r,
                height: 100.r,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10.r)
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 0.5.sw,
                    height: 200.h,
                    color: Colors.green,
                    child: Text('My actual width: ${0.5.sw}'
                    'My actual height : ${200.h}',
                      style: TextStyle(
                        fontSize: 12.sp
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 180,
                      maxHeight: 200
                    ).hw,
                    color: Colors.orange,
                    child: Text('My actual maxWidth 180'
                    'My actual maxHeight : 200}',
                      style: TextStyle(
                        fontSize: 12.sp
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text('Hello test',
              style: TextStyle(
                fontSize: 25
              ),
              ),
              Text('Hello test 2',
              style: TextStyle(
                fontSize: 25.sp
              ),
              ),
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
