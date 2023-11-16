import 'package:flutter/material.dart';

class BottomNavbarPage extends StatelessWidget {
  const BottomNavbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        //backgroundColor: Colors.black12,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.black12,),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black12,),
            label: "Profile",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list,color: Colors.black12,),
            label: "OrderList",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black12,),
            label: "Cart",
          ),

        ],
      ),
    );
  }
}
