import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'social_icons_widget.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20.h),
      constraints: const BoxConstraints(maxWidth: 350, maxHeight: 400),
      // width: 350,
      // color: Colors.red,
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 4),
            leading: Icon(Icons.email),
            title: Text('E-mail'),
            subtitle: Text('ziadhesham280@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            contentPadding: EdgeInsets.symmetric(horizontal: 4),
            title: Text('Phone Number'),
            subtitle: Text('+201116791408'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            contentPadding: EdgeInsets.symmetric(horizontal: 4),
            title: Text('My Resume'),
            subtitle: Text('View here '),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SocialIconsWidget(),
          ),
        ],
      ),
    );
  }
}
