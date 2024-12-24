import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_horizon_app/utils/my_color.dart';

class ButtomNavigationBarItem extends StatefulWidget {

  final List<NavigationBarItem> list;
  const ButtomNavigationBarItem({super.key,required this.list});


  @override
  State<StatefulWidget> createState() => _ButtomNavigationBarItemState();
}

class _ButtomNavigationBarItemState extends State<ButtomNavigationBarItem> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.h,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for(var item in widget.list)
            GestureDetector(
              onTap: () {

                setState(() {
                  index = item.index;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>item.page));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    index == item.index ?  item.activeIcon: item.icon,
                    width: 24.w,
                    height: 24.h,
                  ),
                  Text(item.title,style: TextStyle(fontSize: 12.sp,color: index == item.index ? MyColor.bottomNavigationBarActiveColor : Colors.black),)
                ]
              )
            )
        ],
      ),
    );
  }
}

class NavigationBarItem {
  String icon;
  String activeIcon;
  String title;
  int index;
  Widget page;

  NavigationBarItem(this.icon, this.title, this.index,this.activeIcon, this.page);
}
