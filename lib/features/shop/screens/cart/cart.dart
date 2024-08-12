import 'package:flutter/material.dart';

import 'package:shopeasy/common/widget/appbar/appbar.dart';

import 'package:shopeasy/common/widget/products/cart/add_remove_button.dart';

import 'package:shopeasy/common/widget/products/cart/cart_item.dart';
import 'package:shopeasy/common/widget/texts/product_price_text.dart';

import 'package:shopeasy/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.spaceBtwSections),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => Column(
                  children: [
                    TCartItem(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            /// Extra Space
                            SizedBox(
                              width: 70,
                            ),

                            ///Add remove Button
                            TProductQuantityWithAddRemoveButton(),
                          ],
                        ),
                        TProductPriceText(price: '345')
                      ],
                    ),
                  ],
                ),
            separatorBuilder: (_, __) => SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
            itemCount: 12),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {}, child: Text('Checkout \$1532')),
      ),
    );
  }
}
