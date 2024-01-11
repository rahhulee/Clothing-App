import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Oblong Bag',
          style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [Icon(Icons.favorite_border_sharp), Icon(Icons.shopping_bag)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 410,
                  width: MediaQuery.sizeOf(context).width / 1.1,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 410,
                              width: 261,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Color.fromARGB(76, 138, 136, 136),
                              ),
                              child: Image.asset('assets/Rectangle 325.png'),
                            ),
                            Positioned(
                              bottom: 11,
                              left: 7,
                              child: Container(
                                height: 37,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white),
                                child: Center(
                                    child: Text(
                                  '\$120.00',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            Positioned(
                                right: 10,
                                bottom: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.red,
                                  ),
                                ))
                          ],
                        ),
                      );
                    },
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('color'),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.brown,
                      child: Icon(Icons.gpp_good_outlined),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(backgroundColor: Colors.deepOrangeAccent)
                  ],
                ),
              ],
            ),
            Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('size'),
                Row(
                  children: [
                    CircleAvatar(
                      child: Text(
                        'XS',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      child: Text(
                        'S',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      child: Text(
                        'M',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      child: Text(
                        'L',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      child: Text(
                        'XL',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag),
                    Text('Add to cart'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
