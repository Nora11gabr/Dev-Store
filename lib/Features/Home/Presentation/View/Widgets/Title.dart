import 'package:flutter/material.dart';
import 'package:store/Core/Utils/Consts.dart';

class TitleBar extends StatelessWidget {
  TitleBar({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_sharp,
                    color: KPrimaryColor,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
