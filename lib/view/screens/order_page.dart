
import 'package:ecommerce_app/view/custom_widget/custom_Card.dart';
import 'package:ecommerce_app/view/custom_widget/text.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int select = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      animationDuration: Duration(milliseconds: 5),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          title: CustomText(text: "My Orders", fSize: 30),
          actions: [
            Icon(Icons.search, size: 25),
            SizedBox(width: 10),
            CustomCard(),
          ],
          bottom: TabBar(
            tabs: [
              CustomText(text: "All "),
              CustomText(text: "Processing"),
              CustomText(text: "Shipped"),
              CustomText(text: "Delivered"),
              CustomText(text: "Cancelled"),
            ],
          ),
        ),
        body: TabBarView(
          children: [

            //  TabBar(
            //   labelColor: Colors.orange,
            //   unselectedLabelColor: Colors.black,
            //   tabs: [
            //     Tab(text: "All"),
            //     Tab(text: "Processing"),
            //     Tab(text: "Shipped"),
            //     Tab(text: "Delivered"),
            //     Tab(text: "Cancelled"),
            //   ],
            // ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: select,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined),
              label: "Orders",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
      ),
    );
  }
}