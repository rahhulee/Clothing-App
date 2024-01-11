import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Image> clothlist = [
    Image.asset('assets/Rectangle 325.png'),
    Image.asset('assets/Fashion UI Design (Community)/Rectangle 325.png'),
    Image.asset('assets/Fashion UI Design (Community)/Rectangle 325.png'),
    Image.asset('assets/Fashion UI Design (Community)/Rectangle 325.png'),
    Image.asset('assets/Fashion UI Design (Community)/Rectangle 325.png'),
    Image.asset('assets/Fashion UI Design (Community)/Rectangle 325.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(220, 190, 185, 185),
          elevation: 0,
          centerTitle: true,
          title: Center(
            child: Text(
              '          Bag',
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
            ),
          ),
          actions: [
            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: 600,
                    color: Color.fromARGB(220, 190, 185, 185),
                    child: Image.asset('assets/Group_20-removebg-preview.png'),
                  ),
                  Positioned(
                    bottom: 65,
                    left: 10,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'womenses\'s bag',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Oblong Bag',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 30),
                          ),
                          Text(
                            '\$ 120.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '       You may also like',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  )),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: clothlist[index],
                  );
                },
                itemCount: 6,
                shrinkWrap: true,
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.search,
              ),
              Icon(Icons.save_alt),
              Icon(Icons.home),
              Icon(Icons.account_circle)
            ],
          ),
        ));
  }
}
