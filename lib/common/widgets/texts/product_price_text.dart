import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText(
      {super.key,
      this.currencySign = '\$',
      required this.price,
      this.maxLines = 1,
      this.isLarge = false,
      this.LineThrough = false});

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool LineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(currencySign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: LineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: LineThrough ? TextDecoration.lineThrough : null));
  }
}
