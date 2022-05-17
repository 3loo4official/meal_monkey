import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/lang/locale_keys.g.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInUpBig(
        child: Center(
          child: Column(
            children: [Padding(
          padding: EdgeInsets.only(top: 60.h, right:85.w , left: 85.w),
          child: Text(
            'Reset Password',
            style: TextStyle(color: Color(0xFF4A4B4D),fontSize: 30),
          ),


            ),
            SizedBox(height: 12.h,),
              Text("Please enter your email to receive a\nlink to  create a new password via email",
              textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.sp,color: Color(0xFF7C7D7E)),
              ),
              SizedBox(height: 60.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: TextFormField(decoration: InputDecoration(labelText: 'Email'),),
              ),
              SizedBox(height: 34.h,),
              Container(
                  width: double.infinity.w
                  ,height: 56.h,
                  padding: EdgeInsets.symmetric(horizontal: 34.w),
                  child: ElevatedButton(onPressed: (){}, child:Text('Send')))
            ],
          ),
        ),
      ),
    );
  }
}
