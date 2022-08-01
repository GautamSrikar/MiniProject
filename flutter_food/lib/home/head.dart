import "package:flutter/material.dart";
import 'package:flutter_food/widgets/mediumtext.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      // height: 70,
      margin: const EdgeInsets.all(10),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                MdText(
                  text: "Vijayawada",
                  size: 18,
                ),
                Row(children: [
                  MdText(
                    text: "Nuzvid",
                    color: Colors.black,
                    size: 13,
                  ),
                  const Icon(Icons.arrow_drop_down_outlined)
                ])
              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ]),
    ));
  }
}
