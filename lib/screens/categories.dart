import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategorie = 0;
  int items = 10;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 112.0,
        margin: const EdgeInsets.only(top: 15.0),
        child: ListView.builder(
          itemCount: items,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    margin: const EdgeInsets.only(right: 20.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(25.0),
                      onTap: () {
                        setState(() {
                          selectedCategorie = index;
                        });
                      },
                      child: Card(
                        color: selectedCategorie == index
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        elevation: 3,
                        child: Icon(
                          Icons.fastfood,
                          color: selectedCategorie != index
                              ? Colors.black.withOpacity(0.7)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Text('Berger'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
