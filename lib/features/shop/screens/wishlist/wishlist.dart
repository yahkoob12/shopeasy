import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopeasy/common/widget/appbar/appbar.dart';
import 'package:shopeasy/common/widget/icons/t_circular_icon.dart';
import 'package:shopeasy/common/widget/layouts/grid_layout.dart';
import 'package:shopeasy/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:shopeasy/features/shop/screens/home/home.dart';
import 'package:shopeasy/utils/constants/sizes.dart';

class FevouriteScreen extends StatelessWidget {
  const FevouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 100,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
