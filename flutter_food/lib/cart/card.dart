import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class CartCard extends StatelessWidget {
  final url;
  final name;
  final price;
  const CartCard(
      {Key? key, required this.name, required this.url, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
        child: Row(children: [
      Container(
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(url))),
      ),
      Container(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MdText(
              text: name,
              color: Colors.black,
              size: 22,
            ),
            Row(
              children: [
                Wrap(
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            color: Colors.deepPurple.shade300,
                            size: 14,
                          )),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ],
        ),
      )
    ])));
  }
}
