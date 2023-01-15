import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kopifood/theme/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/spinner_button.dart';

class FoodDetailPage extends StatelessWidget {
  FoodDetailPage({super.key});
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
                  options: CarouselOptions(
                    disableCenter: false,
                    enlargeFactor: 0.8,
                    aspectRatio: 2,
                    enableInfiniteScroll: false,
                  ),
                  items: imgList
                      .map(
                        (item) => Container(
                          margin: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      .toList())),
          10.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Text(
                    "Bakos mangkok kosong kuah mercon dan ini panjang",
                    style: AppTextStyle.title16bold,
                  )),
              Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "15.000",
                      style: AppTextStyle.title16bold,
                    ),
                  )),
            ],
          ),
          30.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinnerButton(
                icon: Icons.remove,
                onTap: () {},
              ),
              20.horizontalSpace,
              Text(
                "12",
                style: AppTextStyle.title18bold,
              ),
              20.horizontalSpace,
              SpinnerButton(
                icon: Icons.add,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        SizedBox(
          width: ScreenUtil().screenWidth,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Update Basket"),
          ),
        )
      ],
    );
  }
}
