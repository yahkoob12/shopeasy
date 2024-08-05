import 'package:flutter/material.dart';
import 'package:shopeasy/common/widget/custom_shapes/Container/primary_header_container.dart';
import 'package:shopeasy/common/widget/custom_shapes/Container/search_container.dart';
import 'package:shopeasy/common/widget/layouts/grid_layout.dart';
import 'package:shopeasy/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:shopeasy/common/widget/texts/section_heading.dart';
import 'package:shopeasy/features/shop/screens/home/widget/home_appbar.dart';
import 'package:shopeasy/features/shop/screens/home/widget/home_categories.dart';
import 'package:shopeasy/features/shop/screens/home/widget/promo_slider.dart';
import 'package:shopeasy/utils/constants/image_strings.dart';

import 'package:shopeasy/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --- SearchBar
                  TSearchBarContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // / --- Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///--- Headings
                        TSectionheading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        ///Category
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Promo  Slider
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// --- Popular Product
                  TGridLayout(
                    itemBuilder: (_, index) => TProductCardVertical(),
                    itemCount: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
