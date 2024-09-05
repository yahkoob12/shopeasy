import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopeasy/common/widget/appbar/appbar.dart';
import 'package:shopeasy/common/widget/brands/brand_card.dart';
import 'package:shopeasy/common/widget/layouts/grid_layout.dart';

import 'package:shopeasy/common/widget/texts/section_heading.dart';
import 'package:shopeasy/features/shop/screens/brand/brand_products.dart';
import 'package:shopeasy/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              TSectionheading(title: 'Brands'),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Brands
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
