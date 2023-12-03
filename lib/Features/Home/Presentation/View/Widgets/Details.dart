import 'package:flutter/material.dart';
import 'package:store/Core/Utils/Consts.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(' Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/imgs/photo_2023-12-03_23-37-42.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Device',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                '25\$',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                'Description',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Description'),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: KPrimaryColor,
                ),
                child: Text(
                  'BUY NOW',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
