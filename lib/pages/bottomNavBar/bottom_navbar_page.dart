import 'package:flutter/material.dart';

class BottomNavbarPage extends StatefulWidget {
  const BottomNavbarPage({super.key});

  @override
  State<BottomNavbarPage> createState() => _BottomNavbarPageState();
}

class _BottomNavbarPageState extends State<BottomNavbarPage> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        onTap: (index){
          setState((){
            _currentIndex=index;
          });

        },
        currentIndex: _currentIndex,
        //backgroundColor: Colors.black12,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.orange,),
            label: "Home",

          ),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.orange,),
            label: "Profile",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list,color: Colors.orange,),
            label: "OrderList",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.orange,),
            label: "Cart",
          ),

        ],
      ),
    );
  }
}
