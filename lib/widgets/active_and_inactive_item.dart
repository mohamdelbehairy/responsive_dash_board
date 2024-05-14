import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_model_item.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveDraweritem extends StatelessWidget {
  const InActiveDraweritem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(drawerItemModel.title, style: AppStyles.styleMedium16));
  }
}

class ActiveDraweritem extends StatelessWidget {
  const ActiveDraweritem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(drawerItemModel.title, style: AppStyles.styleBold16),
        trailing: Container(
            width: 3.27,
            decoration: const BoxDecoration(color: Color(0xFF4EB7F2))));
  }
}
