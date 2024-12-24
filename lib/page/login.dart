import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_horizon_app/page/home_page.dart';
import 'package:shared_horizon_app/page/register.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SafeArea(
          child: Material(
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2024/04/15/08/30/ai-generated-8697298_1280.jpg',
                  fit: BoxFit.fitWidth,width: ScreenUtil().screenWidth,),
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
                        "账号登录",
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.r)),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
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
                            obscureText: true,
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.r)),
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
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text('找回密码',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp))),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      GestureDetector(
                        onTap: () {
                          // 销毁登录页面
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homePage()));
                        },
                        behavior: HitTestBehavior.opaque, // 确保点击区域不透明
                        child: Container(
                          width: 275.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r))),
                          child: Center(
                              child: Text("登录",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp))),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => register()));
                        },
                        child: Text(
                          '没有账号？点击注册',
                          style: TextStyle(color: Colors.blue, fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
