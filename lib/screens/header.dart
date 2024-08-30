import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(45.0),
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 2),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('images/profile_pic.jpg'),
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Ilyass Bezaiz",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Howdy',
                                    fontSize: 17.0,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: const Text(
                                    'Gold Member',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 182, 87),
                                      fontFamily: 'Howdy',
                                      fontSize: 12.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '154,45 \$',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Howdy',
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22.0,
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: 50.0,
                  width: size.width,
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 40.0),
                    elevation: 3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Search for a berger...',
                        hintStyle: TextStyle(
                          fontFamily: 'Howdy',
                          fontSize: 12.0,
                        ),
                        suffixIcon: Icon(Icons.search_outlined),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 25.0, top: 13.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
