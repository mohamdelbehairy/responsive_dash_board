import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground)),
            color: const Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(right: 42, left: 31, top: 16),
              title: Text('Name card',
                  style:
                      AppStyles.styleReqular16.copyWith(color: Colors.white)),
              subtitle:
                  const Text('Syah Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            )
          ],
        ),
      ),
    );
  }
}
