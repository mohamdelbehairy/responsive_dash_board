import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class AllExxpensessItemListView extends StatefulWidget {
  const AllExxpensessItemListView({super.key});

  @override
  State<AllExxpensessItemListView> createState() =>
      _AllExxpensessItemListViewState();
}

class _AllExxpensessItemListViewState extends State<AllExxpensessItemListView> {
  final items = const [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: AllExpensessItem(
                    itemModel: item, isSelected: selectedIndex == index)),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
