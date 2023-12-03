import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:store/Features/Home/Presentation/DeviceModel.dart';
import 'package:store/Features/Home/Presentation/View/Widgets/Details.dart';

class DeviceContainer extends StatelessWidget {
  DeviceContainer({super.key, required this.devmodel});
  DeviceModel devmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookDetails()),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        width: 200,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(8),
                height: 150,
                width: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(devmodel.img!), fit: BoxFit.fill),
                ),
              ),
            ),
            ListTile(
              title: Text(devmodel.BookName!),
              subtitle: Text('${devmodel.Price!}\$'),
            )
          ],
        ),
      ),
    );
  }
}
