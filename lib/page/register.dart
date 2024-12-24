import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_horizon_app/page/home_page.dart';
import 'package:shared_horizon_app/page/login.dart';

class register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          child: Image.network(
            'https://cdn.pixabay.com/photo/2024/04/15/08/30/ai-generated-8697298_1280.jpg',
            fit: BoxFit.fitWidth,
            width: ScreenUtil().screenWidth,
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              height: 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              width: ScreenUtil().screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    '注册账号',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 275.w,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            // 阴影颜色
                            spreadRadius: 5,
                            // 阴影扩散半径
                            blurRadius: 7,
                            // 阴影模糊半径
                            offset: Offset(0, 3), // 阴影偏移量
                          ),
                        ],
                      ),
                      child: CupertinoTextField(
                        cursorColor: Colors.black,
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          color: Colors.white, // 设置背景颜色
                        ),
                        style: TextStyle(color: Colors.black),
                        placeholder: "请输入账号",
                        placeholderStyle:
                            TextStyle(color: Colors.grey, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 275.w,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            // 阴影颜色
                            spreadRadius: 5,
                            // 阴影扩散半径
                            blurRadius: 7,
                            // 阴影模糊半径
                            offset: Offset(0, 3), // 阴影偏移量
                          ),
                        ],
                      ),
                      child: CupertinoTextField(
                        obscureText: true,
                        cursorColor: Colors.black,
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          color: Colors.white, // 设置背景颜色
                        ),
                        style: TextStyle(color: Colors.black),
                        placeholder: "请输入密码",
                        placeholderStyle:
                            TextStyle(color: Colors.grey, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 275.w,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            // 阴影颜色
                            spreadRadius: 5,
                            // 阴影扩散半径
                            blurRadius: 7,
                            // 阴影模糊半径
                            offset: Offset(0, 3), // 阴影偏移量
                          ),
                        ],
                      ),
                      child: CupertinoTextField(
                        obscureText: true,
                        cursorColor: Colors.black,
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          color: Colors.white, // 设置背景颜色
                        ),
                        style: TextStyle(color: Colors.black),
                        placeholder: "再次输入密码",
                        placeholderStyle:
                            TextStyle(color: Colors.grey, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Container(
                      width: 275.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        color: Colors.blue,
                      ),
                      child: Center(
                          child: Text("注册",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp))),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Text(
                        '已有账号？前往登录',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ))
      ],
    ));
  }
}
