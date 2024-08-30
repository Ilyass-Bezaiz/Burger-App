import 'package:burger_app/screens/berger_list.dart';
import 'package:burger_app/screens/categories.dart';
import 'package:flutter/material.dart';
import 'screens/header.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.teal),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.orangeAccent),
      ),
      debugShowCheckedModeBanner: false,
      home: const Hamberger(),
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({super.key});

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            title: const Text(
              'Deliver me',
              style: TextStyle(fontFamily: 'Howdy'),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              )
            ],
          ),
          const Header(),
          const Categories(),
          const BurgerList(row: 1),
          const BurgerList(row: 2),
          const BurgerList(row: 3),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     [

          //     ],
          //   ),
          // ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.home,
          size: 30.0,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(45.0),
        ),
        child: BottomAppBar(
          height: 62.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_alert_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              const Spacer(),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_add_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
