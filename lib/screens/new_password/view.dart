import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassScreen extends StatefulWidget {
  const NewPassScreen({Key? key}) : super(key: key);

  @override
  State<NewPassScreen> createState() => _NewPassScreenState();
}

class _NewPassScreenState extends State<NewPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Text(
            'New Password',
            style: TextStyle(fontSize: 30.sp, color: Color(0xff4A4B4D)),
          ),
          SizedBox(
            height: 12.h,
          ),
          const Text(
            'Please enter your email to receive a \n link to  create a new password via email',textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff7C7D7E),),
          ),
          SizedBox(height: 39.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.h),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'New Password'),
            ),
          ),
          SizedBox(height: 28,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.h),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirm Password'),
            ),
          ),
          SizedBox(height: 28,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34),
            child: Container(width: double.infinity,
              height: 56,
              child: ElevatedButton(onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>NewPassScreen()));
              }
                , child: Text('Next',),),),
          )
        ],
      ),
    ));
  }
}
