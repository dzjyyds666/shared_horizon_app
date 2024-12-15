import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewVerticalWidget extends StatelessWidget {
  final List<String> _itemList;
  final String _title;

  const ListViewVerticalWidget(this._itemList, this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_title,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
              const Expanded(child: SizedBox()),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'see all',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.lightBlue),
                      ),
                      SizedBox(width: 5.w),
                      Icon(
                        Icons.arrow_circle_right,
                        size: 14.w,
                        color: Colors.lightBlue,
                      ),
                    ],
                  ))
            ],
          ),
          for (var item in _itemList) _listItem(context, item)
        ],
      ),
    );
  }

  Widget _listItem(BuildContext context, String url) {
    return Container(
      padding: EdgeInsets.all(10.h),
      width: MediaQuery.of(context).size.width,
      height: 150.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.network(url,
                fit: BoxFit.cover, width: 100.w, height: 130.h),
          ),
          SizedBox(width: 20.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('电影名',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              Text(
                '分类',
                style: TextStyle(fontSize: 12.sp),
              )
            ],
          ),
          Expanded(
              child: SizedBox(
            width: 20.w,
          )),
          Icon(
            Icons.play_circle_outline,
            size: 30.w,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
    );
  }
}
