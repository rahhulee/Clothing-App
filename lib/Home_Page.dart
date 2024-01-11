import 'package:clothing_app/List_class.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> image = [
    Image.asset("assets/image1.png"),
    Image.asset("assets/image2.png"),
    Image.asset("assets/image3.png"),
    Image.asset("assets/image4.png"),
  ];
  List<name> listname = [
    name("21WN reversible angora", "Cardigan", "\$120"),
    name("ClothName", 'fila', "\$123"),
    name("ClothName", "Brand", '\$145'),
    name("ClothName", "Brand", "\$155")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 50,
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                "New Produts",
                style: TextStyle(color: Colors.black),
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Apparel",
                ),
                Tab(
                  text: "Dress",
                ),
                Tab(
                  text: "T shirt",
                ),
                Tab(
                  text: "Bag",
                ),
              ],
              indicatorColor: Colors.black,
              indicatorWeight: 2.0,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black,
              isScrollable: true,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                  child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 7, // spacing between rows
                    crossAxisSpacing: 0.9, // spacing between columns
                    childAspectRatio: 0.690),
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        SizedBox(width: 300, child: image[index]),
                        Text(listname[index].ClothName),
                        Text(listname[index].Brand),
                        Text(listname[index].Amount)
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    height: 60,
                    width: 71,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  );
                },
                itemCount: 4,
              )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "                          Explore More",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
