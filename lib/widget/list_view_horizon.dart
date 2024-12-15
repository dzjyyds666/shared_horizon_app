import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewHorizonWidget extends StatelessWidget {
  final List<String> _itemList;
  final String title;

  const ListViewHorizonWidget(this._itemList, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'see all',
                        style:
                            TextStyle(fontSize: 12.sp, color: Colors.lightBlue,),
                      ),
                      SizedBox(width: 5.w),
                      Icon(
                        Icons.arrow_circle_right,
                        size: 14.w,
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150.h,
            width: MediaQuery.of(context).size.width,
            child: _itemList.isEmpty
                ? Center(child: Text('No items available'))
                : ListView(
                    scrollDirection: Axis.horizontal,
                    children: _itemList.map((e) => _listItem(e)).toList(),
                  ),
          )
        ],
      ),
    );
  }

  Widget _listItem(String item) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.grey, // 可以添加一个背景色，防止图片加载失败时显示空白
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        child: Image.network(
          item,
          fit: BoxFit.cover,
          width: 100.w,
          height: 100.h,
          errorBuilder: (context, error, stackTrace) {
            return Center(child: Text('Image failed to load'));
          },
        ),
      ),
    );
  }
}
