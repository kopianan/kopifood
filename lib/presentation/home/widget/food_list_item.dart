import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kopifood/theme/app_text_style.dart';

class FoodListItem extends StatelessWidget {
  const FoodListItem({
    super.key,
    this.onTap,
    required this.quantityBuy,
    required this.imageUrl,
    required this.name,
    required this.price,
  });
  final Function()? onTap;
  final String name;
  final int quantityBuy;
  final String imageUrl;
  final double price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 100,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                      softWrap: true,
                      text: TextSpan(
                          style: AppTextStyle.title16normal.copyWith(
                            color:
                                quantityBuy > 0 ? Colors.amber : Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text:
                                    quantityBuy == 0 ? '' : '${quantityBuy}x'),
                            const TextSpan(text: ' '),
                            TextSpan(text: "$name")
                          ]),
                    ),
                  ),
                  Expanded(child: Text(price.toString()))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
