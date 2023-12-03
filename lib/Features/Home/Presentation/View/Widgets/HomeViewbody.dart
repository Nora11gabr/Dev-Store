import 'package:flutter/material.dart';
import 'package:store/Features/Home/Presentation/DeviceModel.dart';

import 'package:store/Features/Home/Presentation/View/Widgets/DeviceContainer.dart';
import 'package:store/Features/Home/Presentation/View/Widgets/Profile.dart';
import 'package:store/Features/Home/Presentation/View/Widgets/Title.dart';

class HOmeViewbody extends StatelessWidget {
  HOmeViewbody({super.key});
  List<DeviceModel> Gaming = [
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-46.jpg',
        Price: 25,
        BookName: 'the pragmatic programmer'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-45.jpg',
        Price: 65,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-45 (2).jpg',
        Price: 90,
        BookName: 'bbb'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-42.jpg',
        Price: 25,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-40 (2).jpg',
        Price: 100,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-40 (2).jpg',
        Price: 85,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-42.jpg',
        Price: 25,
        BookName: 'bbb'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-42.jpg',
        Price: 125,
        BookName: 'structure-and-interpretation'),
  ];
  List<DeviceModel> New = [
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-36.jpg',
        Price: 150,
        BookName: 'The Subtle Art of Not Giving a F*ck'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-32.jpg',
        Price: 65,
        BookName: 'Atomic Habits" by James Clear'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-32.jpg',
        Price: 100,
        BookName: 'How to Win Friends and Influence People'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-34.jpg',
        Price: 205,
        BookName: 'The 7 Habits '),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-41.jpg',
        Price: 100,
        BookName: 'The Power of Habit'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-46.jpg',
        Price: 85,
        BookName: 'The Life-Changing Magic of Tidying Up'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-42.jpg',
        Price: 25,
        BookName: 'Happiness by design'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-32.jpg',
        Price: 125,
        BookName: 'You Are A Badass'),
  ];
  List<DeviceModel> TopSelling = [
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-34.jpg',
        Price: 100,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-25.jpg',
        Price: 85,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-34.jpg',
        Price: 25,
        BookName: 'bbb'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-38.jpg',
        Price: 125,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-32.jpg',
        Price: 150,
        BookName: 'The Subtle Art of Not Giving a F*ck'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-40.jpg',
        Price: 65,
        BookName: 'Atomic Habits" by James Clear'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-41.jpg',
        Price: 100,
        BookName: 'How to Win Friends and Influence People'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-46.jpg',
        Price: 205,
        BookName: 'The 7 Habits '),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-30.jpg',
        Price: 25,
        BookName: 'bbb'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-32.jpg',
        Price: 125,
        BookName: 'structure-and-interpretation'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-36.jpg',
        Price: 125,
        BookName: 'You Are A Badass'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-34.jpg',
        Price: 25,
        BookName: 'Happiness by design'),
    DeviceModel(
        img: 'assets/imgs/photo_2023-12-03_23-37-42.jpg',
        Price: 125,
        BookName: 'structure-and-interpretation'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Profile(),
        TitleBar(
          text: 'Top Selling',
        ),
        Container(
            height: 270,
            child: ListView.builder(
              itemCount: TopSelling.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DeviceContainer(
                  devmodel: TopSelling[index],
                );
              },
            )),
        TitleBar(
          text: 'New',
        ),
        Container(
            height: 270,
            child: ListView.builder(
              itemCount: New.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DeviceContainer(
                  devmodel: New[index],
                );
              },
            )),
        TitleBar(
          text: 'Gaming',
        ),
        Container(
            height: 270,
            child: ListView.builder(
              itemCount: Gaming.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DeviceContainer(
                  devmodel: Gaming[index],
                );
              },
            ))
      ],
    );
  }
}
