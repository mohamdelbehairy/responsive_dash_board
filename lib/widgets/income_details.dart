import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xff208BC7), title: 'Design services', value: '40%'),
    ItemDetailsModel(
        color: Color(0xff4DB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0xff064060), title: 'Design royalti', value: '20%'),
    ItemDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemsDetails(itemDetailsModel: items[index]);
        });
  }
}

