import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return (ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return (Container(
            height: 120,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0.3,
                  color: Colors.grey,
                )),
            child: Row(
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage("assets/images/home/slide/img3.jpg"))),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MdText(
                          text: "Chinese Side",
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
                            MdText(
                              text: "4.5",
                              color: Colors.grey.shade400,
                              size: 12,
                            ),
                            MdText(
                              text: "1287  comments",
                              color: Colors.grey.shade400,
                              size: 12,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            iconText(Icons.circle, "Normal ", Colors.yellow),
                            iconText(Icons.location_on, "1.7km ", Colors.green),
                            iconText(Icons.access_time, "32min ",
                                Colors.red.shade400)
                          ],
                        ),
                      ]),
                )
              ],
            ),
          ));
        })));
  }

  Container iconText(IconData icon, String text, Color color) {
    return Container(
        child: Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 18,
        ),
        SizedBox(
          width: 5,
        ),
        MdText(text: text, size: 12, color: Colors.grey)
      ],
    ));
  }
}
