import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  final int burgerType;
  final int index;
  final int row;
  const BurgerPage({
    super.key,
    required this.burgerType,
    required this.index,
    required this.row,
  });

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  int selectedSize = 1;
  int burgersNumber = 1;
  var price = 15.95;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
          ),
        ),
        actions: [
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 40.0,
            child: Image.asset(
              'images/circle_2.png',
              height: 1800.0,
              color: Colors.black.withOpacity(0.05),
            ),
          ),
          Positioned(
            top: 165.0,
            child: Image.asset(
              'images/circle_2.png',
              height: 310.0,
              color: Colors.black.withOpacity(0.05),
            ),
          ),
          Positioned(
            top: 280.0,
            child: Image.asset(
              'images/semi_circle.png',
              height: 310.0,
              color: Colors.black.withOpacity(0.05),
            ),
          ),          
          Positioned(
            top: 195.0,
            child: Hero(
              tag: 'berger' +
                  widget.burgerType.toString() +
                  '-tag-' +
                  widget.row.toString() +
                  '-' +
                  widget.index.toString(),
              child: Image.asset(
                'images/burger_' + widget.burgerType.toString() + '.png',
                height: 225.0,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  'Burger',
                  style: TextStyle(fontFamily: 'Howdy', fontSize: 25.0),
                ),
              ),
              const SizedBox(
                height: 320.0,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 120.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: selectedSize == 0 ? Colors.teal : Colors.white,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            selectedSize = 0;
                          });
                        },
                        icon: Text(
                          'S',
                          style: TextStyle(
                            fontFamily: 'Howdy',
                            color:
                                selectedSize == 0 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Card(
                      elevation: 3.0,
                      margin: const EdgeInsets.only(top: 35.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: selectedSize == 1 ? Colors.teal : Colors.white,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            selectedSize = 1;
                          });
                        },
                        icon: Text(
                          'M',
                          style: TextStyle(
                            fontFamily: 'Howdy',
                            color:
                                selectedSize == 1 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: selectedSize == 2 ? Colors.teal : Colors.white,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            selectedSize = 2;
                          });
                        },
                        icon: Text(
                          'L',
                          style: TextStyle(
                            fontFamily: 'Howdy',
                            color:
                                selectedSize == 2 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  Card(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    color: const Color.fromARGB(255, 143, 228, 208),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (burgersNumber != 1) {
                            burgersNumber -= 1;
                            price -= 15.95;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove),
                      color: Colors.teal,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '$burgersNumber',
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Howdy',
                        fontSize: 20.0),
                  ),
                  const Spacer(),
                  Card(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    color: const Color.fromARGB(255, 143, 228, 208),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          burgersNumber += 1;
                          price += 15.95;
                        });
                      },
                      icon: const Icon(Icons.add),
                      color: Colors.teal,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            const Text(
                              'Price:',
                              style: TextStyle(
                                  fontFamily: 'Howdy', color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              '${price.toStringAsFixed(2)} \$',
                              style: const TextStyle(
                                  fontFamily: 'Howdy', fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(20.0),
                    ),
                    child: const SizedBox(
                      height: 70.0,
                      width: 200.0,
                      child: Card(
                        elevation: 5.0,
                        margin: EdgeInsets.only(right: 0),
                        color: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            Text(
                              '  Go to Cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Howdy',
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
