import '../../custom_widget/text.dart';
import 'package:flutter/material.dart';
import '../../custom_widget/custom_Card.dart';
import 'package:ecommerce_app/view/screens/all_products/product.dart';
import 'package:ecommerce_app/view/screens/all_products/widget/filter_section.dart';
import 'package:ecommerce_app/view/screens/all_products/widget/productCartWidget.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key, required this.index,});

  final int index;

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomText(
            text: "All Product",
            fWeight: FontWeight.bold,
            fSize: 18,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(height: 10),
          CustomCard(),
          SizedBox(height: 10),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          FilterSection(),
          GridView.builder(
            shrinkWrap: true,
            itemCount: Product.p.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (context, i) => ProductCardWidget(index: i,),
          ),
        ],
      ),
    );
  }
}
