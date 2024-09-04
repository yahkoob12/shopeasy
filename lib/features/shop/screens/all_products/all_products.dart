import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopeasy/common/widget/appbar/appbar.dart';
import 'package:shopeasy/common/widget/layouts/grid_layout.dart';
import 'package:shopeasy/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:shopeasy/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //// Dropdown
              DropdownButtonFormField(
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Sale',
                  'Newest',
                  'Popularity'
                ]
                    .map((option) =>
                        DropdownMenuItem(value: option, child: Text(option)))
                    .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.sort),
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Products
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
