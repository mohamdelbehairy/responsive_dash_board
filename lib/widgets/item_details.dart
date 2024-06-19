import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import '../utils/app_styles.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
                shape: const OvalBorder(), color: itemDetailsModel.color)),
        title: Text(itemDetailsModel.title, style: AppStyles.styleReqular16),
        trailing: Text(itemDetailsModel.value, style: AppStyles.styleMedium16));
  }
}
