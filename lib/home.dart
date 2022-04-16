import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constant.dart';
import 'package:flutter_application_1/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Shoe App ",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(backgroundColor: Kprimarycolor),
          ),
        ],
      ),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Alexa'),
              accountEmail: Text('alex2gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/nikelogo.png'),
              ),
            ),
            MenuList(
              press: () {},
              title: 'Home',
              icon: Icons.home,
            ),
            MenuList(
              press: () {},
              title: 'categerious',
              icon: Icons.dashboard,
            ),
            MenuList(press: () {}, title: 'cart', icon: Icons.shopping_cart),
            Divider(
              color: Colors.amber,
            ),
            MenuList(press: () {}, title: 'About', icon: Icons.help),
            MenuList(press: () {}, title: 'Setting', icon: Icons.settings),
            MenuList(press: () {}, title: 'logout', icon: Icons.logout),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
    required this.title,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final String title;
  final Function press;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      child: ListTile(
        title: Text(title),
        leading: Icon(
          icon,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
