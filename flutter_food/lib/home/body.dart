import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/home/popular.dart';
import 'package:flutter_food/screens/popularScreen.dart';
import 'package:flutter_food/widgets/mediumtext.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  double _currentPage = 0.0;
  PageController pagecontroller = PageController();
  final names = [
    {
      "name": "Samosa",
      "rest": "West Side",
      "discription":
          "A samosa or singara is a fried or baked pastry with a savory filling, including ingredients such as spiced potatoes, onions, and peas. It may take different forms, including triangular, cone, or half-moon shapes, depending on the region. Samosas are often accompanied by chutney, and have origins in medieval times or earlier."
    },
    {
      "name": "Egg Ommlette",
      "rest": "Modren Run",
      "discription":
          "In cuisine, an omelette is a dish made from beaten eggs, fried with butter or oil in a frying pan. It is quite common for the omelette to be folded around fillings such as chives, vegetables, mushrooms, meat, cheese, onions or some combination."
    },
    {
      "name": "Chicken Biryani",
      "rest": "Corner Bistro",
      "discription":
          "Chicken Biryani is a mixed rice dish with chiken originating among the royal khansamas of the durbar of Old Delhi, under the Mughal Empire, during the late 16th century of the erstwhile Mughal Cour"
    },
    {
      "name": "Mutton Biryani",
      "rest": "Corner Bistro",
      "discription":
          "Mutton Biryani is a mixed rice dish with mutton originating among the royal khansamas of the durbar of Old Delhi, under the Mughal Empire, during the late 16th century of the erstwhile Mughal Cour"
    },
  ];
  @override
  void initState() {
    super.initState();
    pagecontroller.addListener(() {
      setState(() {
        _currentPage = pagecontroller.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Container(
              height: 250,
              child: PageView.builder(
                  itemCount: 4,
                  controller: pagecontroller,
                  onPageChanged: (index) => setState(() {
                        _currentPage = index.toDouble();
                      }),
                  itemBuilder: (context, index) {
                    return _buildPageItem(index);
                  }),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: DotsIndicator(
                dotsCount: 4,
                position: _currentPage,
                onTap: (position) {
                  setState(() {
                    _currentPage = position;
                    pagecontroller.jumpToPage(position.toInt());
                  });
                },
                decorator: DotsDecorator(
                  activeColor: Colors.deepPurpleAccent,
                  color: Colors.white,
                  size: Size(10, 10),
                  activeSize: Size(20, 10),
                  shapes: [
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ],
                  activeShapes: [
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ],
                ),
              ),
            )
          ]),
          SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 20,
              ),
              MdText(
                text: "Popular Restaurents",
                color: Colors.black,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              MdText(
                text: "in your area",
                size: 10,
                color: Colors.grey.shade700,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Popular()
        ]),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    // setState(() {
    //   i = index.toDouble() + 1;
    // });
    final i = index + 1;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PopularPage(
                    name: names[index]["name"].toString(),
                    rest: names[index]["rest"].toString(),
                    description: names[index]["discription"].toString(),
                    url: "assets/images/home/slide/img${i}.jpg")));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.shade100,
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: AssetImage("assets/images/home/slide/img${i}.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
