//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_app/Cart/cart.dart';
import 'package:graduation_app/Login/LoginScreen.dart';

Widget drawer({BuildContext context}) {
  return Drawer(
    child: ListView(
      children: [
        // Header
        UserAccountsDrawerHeader(
          accountName: Text('Hamsa Hesham'),
          accountEmail: Text('Hamsa@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
        ),
        // Body
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Home Page"),
            leading: Icon(
              Icons.home,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("My account"),
            leading: Icon(
              Icons.person,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("My orders"),
            leading: Icon(
              Icons.shopping_basket,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Cart(),
              ),
            );
          },
          child: ListTile(
            title: Text("Shopping Cart"),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.redAccent,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Favourites"),
            leading: Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("Settings"),
            leading: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text("About"),
            leading: Icon(
              Icons.help,
              color: Colors.blue,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          child: ListTile(
            title: Text("Logout"),
            leading: Icon(
              Icons.logout,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}
