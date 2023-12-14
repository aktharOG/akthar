import 'package:akthar/constants/app_icons.dart';
import 'package:akthar/view/model/profile_model.dart';
import 'package:akthar/widgets/custom_svg.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItem extends StatelessWidget {
  final ProfileModel profileModel;
  const ProfileItem({super.key, required this.profileModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey.shade300,
                    child: SvgIcon(path: profileModel.icon),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  HeadingText(text: profileModel.name),
                ],
              ),
              const Icon(Icons.arrow_forward_ios,color: Colors.grey,)
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        )
      ],
    );
  }
}
