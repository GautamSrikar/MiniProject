import 'package:flutter/material.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class HomeFood extends StatelessWidget {
  const HomeFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade50,
        body: Stack(
          children: [
            Positioned(
                child: Container(
                    margin: EdgeInsets.all(10),
                    child: MdText(text: "Home Restaurents"))),
            Container(
              margin: EdgeInsets.all(20),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          child: (Container(
                            margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/home/popular/${index + 1}.jpg"))),
                          )),
                        ),
                        Positioned(
                          bottom: -8,
                          child: Container(
                            height: 80,
                            width: 160,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.deepPurple.shade100),
                            child: Text(" "),
                          ),
                        )
                      ],
                    );
                  }),
            ),
          ],
        ));
  }
}
