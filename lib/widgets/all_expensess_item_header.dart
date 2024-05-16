import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(14),
          decoration: const ShapeDecoration(
              color: Color(0xFFFAFAFA), shape: OvalBorder()),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        const Icon(Icons.keyboard_arrow_right, color: Color(0xFF064061))
      ],
    );
  }
}
