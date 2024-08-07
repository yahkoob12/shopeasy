import 'package:flutter/material.dart';
import 'package:shopeasy/common/widget/brands/brand_show_case.dart';
import 'package:shopeasy/common/widget/layouts/grid_layout.dart';
import 'package:shopeasy/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:shopeasy/common/widget/texts/section_heading.dart';
import 'package:shopeasy/utils/constants/image_strings.dart';
import 'package:shopeasy/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// --- Brands
              TBrandShowcase(
                images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// --- Products
              TSectionheading(
                title: 'You might like',
                onPressed: () {},
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TGridLayout(
                  itemCount: 8,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}




//  Padding(
//                 padding: EdgeInsets.all(TSizes.defaultSpace),
//                 child: Column(
//                   children: [
//                     /// --- Brands
//                     TBrandShowcase(
//                       images: [
//                         TImages.productImage3,
//                         TImages.productImage2,
//                         TImages.productImage1
//                       ],
//                     )

//                     /// --- Products
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(TSizes.defaultSpace),
//                 child: Column(
//                   children: [
//                     /// --- Brands
//                     TBrandShowcase(
//                       images: [
//                         TImages.productImage3,
//                         TImages.productImage2,
//                         TImages.productImage1
//                       ],
//                     )

//                     /// --- Products
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(TSizes.defaultSpace),
//                 child: Column(
//                   children: [
//                     /// --- Brands
//                     TBrandShowcase(
//                       images: [
//                         TImages.productImage3,
//                         TImages.productImage2,
//                         TImages.productImage1
//                       ],
//                     )

//                     /// --- Products
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(TSizes.defaultSpace),
//                 child: Column(
//                   children: [
//                     /// --- Brands
//                     TBrandShowcase(
//                       images: [
//                         TImages.productImage3,
//                         TImages.productImage2,
//                         TImages.productImage1
//                       ],
//                     )

//                     /// --- Products
//                   ],
//                 ),
//               ),