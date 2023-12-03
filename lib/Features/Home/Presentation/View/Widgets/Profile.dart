import 'package:flutter/material.dart';
import 'package:store/Core/Utils/Consts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 1,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Text(
                'AM',
                style: TextStyle(color: KPrimaryColor),
              ),
            ),
            textColor: Colors.white,
            title: Text('Ahmed Mohamed'),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
          ),
          Spacer(
            flex: 1,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'search',
                suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      color: KPrimaryColor,
                    )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: KPrimaryColor)),
                filled: true,
                fillColor: Colors.white),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
