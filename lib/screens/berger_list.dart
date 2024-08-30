import 'package:burger_app/screens/burger_page.dart';
import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  final int row;
  const BurgerList({super.key, required this.row});

  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  int items = 10;
  int burgerType = 1;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 3 ? 350 : 260.0,
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: const EdgeInsets.only(left: 40.0),
                  child: InkWell(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => BurgerPage(
                            burgerType: reverse ? 1: 2,
                            index: index,
                            row: widget.row,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      elevation: 5,
                      color: Colors.teal,
                      child: Container(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            Text(
                              reverse ? 'Bacon' : 'Chicken',
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Howdy',
                                fontSize: 20.0,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                const Text(
                                  '15,95 \$',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Howdy',
                                    fontSize: 15.0,
                                  ),
                                ),
                                const Spacer(),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 3,
                                  color: Colors.white,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.add,
                                      size: 35.0,
                                      color: Colors.black54,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 40.0 : 50.0,
                  right: reverse ? 60.0 : 50.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => BurgerPage(
                            burgerType: reverse ? 1 : 2,
                            index: index,
                            row: widget.row,
                          ),
                        ),
                      );
                    },
                    child: reverse
                        ? SizedBox(
                            height: 140,
                            child: Hero(
                              tag: 'berger1-tag-' +
                                  widget.row.toString() +
                                  '-' +
                                  index.toString(),
                              child: Image.asset('images/burger_1.png'),
                            ),
                          )
                        : SizedBox(
                            height: 130,
                            child: Hero(
                              tag: 'berger2-tag-' +
                                  widget.row.toString() +
                                  '-' +
                                  index.toString(),
                              child: Image.asset('images/burger_2.png'),
                            ),
                          ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
