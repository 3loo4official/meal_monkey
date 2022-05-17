import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/lang/locale_keys.g.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  PinCodeVerificationScreen({Key? key}) : super(key: key);
  int _otpCodeLength = 4;
  bool _isLoadingButton = false;
  bool _enableButton = false;
  String _otpCode = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final intRegex = RegExp(r'\d+', multiLine: true);
  TextEditingController textEditingController =
      new TextEditingController(text: "");

  @override
  State<PinCodeVerificationScreen> createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 55.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                ' We have sent an OTP to \n  your Mobile',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Color(0xff4A4B4D),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Please check your mobile number 071*****12 \n continue to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: Color(0xff7C7D7E),
              ),
            ),
            SizedBox(
              height: 54.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.h),
              child: PinCodeTextField(
                backgroundColor: Colors.white,
                pinTheme: PinTheme(
                  borderWidth: 0,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12.r),
                  fieldHeight: 50.h,
                  fieldWidth: 50.h,
                  inactiveColor: Colors.grey,
                  inactiveFillColor: Colors.grey,
                ),
                appContext: context,
                onChanged: (String value) {
                  print(value);
                },
                length: 4,
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.h),
              child: Container(
                width: double.infinity.w,
                height: 55.h,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't Receive?",
                    style: TextStyle(
                      color: Color(0xff7C7D7E),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Click Here',
                      style: TextStyle(color: Color(0xffFC6011)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
