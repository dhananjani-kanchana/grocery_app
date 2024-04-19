import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/product_details/price_list.dart';
import 'package:flutter_grocery/pages/home_page/product_details/widgets/product_information.dart';
import 'package:flutter_grocery/widgets/shared/shared_banner.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Product Details",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SharedBanner(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFE500).withOpacity(0.29),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 280,
                      color: const Color(0xff3B3636).withOpacity(0.75),
                    ),
                  ),
                ),
              ),
              const ProductInformation(
                productTitle: "Product Information",
                productDescription:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 20,
              ),
              const ProductInformation(
                productTitle: "Product Information",
                productDescription:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Price List",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const PriceListWidget(
                circleNumber: 1,
                productName: "Green Peas",
                productQuantity: 100,
                unitName: "g",
              ),
              const PriceListWidget(
                circleNumber: 1,
                productName: "Brussels sprouts.",
                productQuantity: 100,
                unitName: "g",
              ),
              const PriceListWidget(
                circleNumber: 1,
                productName: "Broccoli",
                productQuantity: 100,
                unitName: "g",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
