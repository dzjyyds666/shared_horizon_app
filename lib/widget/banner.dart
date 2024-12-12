import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouseSliderWidget extends StatelessWidget {

  final List<String> _bannerList;
  const CarouseSliderWidget(this._bannerList,{super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _bannerListWidget(),
      options: CarouselOptions(
        autoPlay: true,
        height: 200.h,
      ),
    );
  }

  List<Widget>? _bannerListWidget() {
    List<Widget> list = [];
    for (var i = 0; i < _bannerList.length; i++) {
      list.add(Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          child: Container(
            child:
                Image.network(_bannerList[i], fit: BoxFit.cover, width: 300.w),
          ),
        ),
      ));
    }
    return list;
  }
}
