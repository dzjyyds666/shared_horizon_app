import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_horizon_app/widget/list_view_vertical.dart';

import '../widget/banner.dart';
import '../widget/buttom.dart';
import '../widget/list_view_horizon.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<String> bannerList = [];
  List<String> recommendList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bannerList = [
      "https://images.pexels.com/photos/305821/pexels-photo-305821.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/5799379/pexels-photo-5799379.jpeg?auto=compress&cs=tinysrgb&w=1200",
    ];
    recommendList = [
      "https://images.pexels.com/photos/2027697/pexels-photo-2027697.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/3651577/pexels-photo-3651577.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/2027697/pexels-photo-2027697.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/3651577/pexels-photo-3651577.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/2027697/pexels-photo-2027697.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/3651577/pexels-photo-3651577.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/2027697/pexels-photo-2027697.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/3651577/pexels-photo-3651577.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/2027697/pexels-photo-2027697.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/3651577/pexels-photo-3651577.jpeg?auto=compress&cs=tinysrgb&w=1200"
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: CupertinoColors.white,
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 30.h,
                                    left: 30.w,
                                    right: 30.w,
                                    bottom: 30.h),
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        "https://dthezntil550i.cloudfront.net/p4/latest/p42102052243097410008650553/1280_960/12bc8bc0-2186-48fb-b432-6c011a559ec0.png",
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hi,Aaron!',
                                          style: TextStyle(
                                              fontSize: 20.w,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Welcom to ShareHorizen',
                                          style: TextStyle(fontSize: 12.w),
                                        )
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(
                                      Icons.search,
                                      size: 28.w,
                                    ),
                                    SizedBox(width: 10.w),
                                    Icon(
                                      Icons.tips_and_updates_outlined,
                                      size: 28.w,
                                    )
                                  ],
                                ),
                              ),
                              // 轮播图
                              SizedBox(height: 10.h),
                              CarouseSliderWidget(bannerList),
                              ListViewHorizonWidget(recommendList, "Recommend"),
                              SizedBox(height: 10.h,),
                              ListViewVerticalWidget(recommendList,"Top Searcher"),
                              SizedBox(height: 70.h),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: 0,
                        child:ButtomNavigationBarItem(list: [
                          NavigationBarItem("assets/img/shouye.svg", "首页", 0, "assets/img/shouye-2.svg"),
                          NavigationBarItem("assets/img/sousuo.svg", "搜索", 1, "assets/img/sousuo-2.svg"),
                        ],),
                    )
                  ],
                ))));
  }
}
