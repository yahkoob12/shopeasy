import 'package:flutter/material.dart';
import 'package:shopeasy/common/widget/brands/brand_card.dart';
import 'package:shopeasy/common/widget/custom_shapes/Container/rounded_container.dart';
import 'package:shopeasy/utils/constants/colors.dart';
import 'package:shopeasy/utils/constants/image_strings.dart';
import 'package:shopeasy/utils/constants/sizes.dart';
import 'package:shopeasy/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: EdgeInsets.all(TSizes.md),
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          TBrandCard(showBorder: false),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Brand Top 3 Products Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: EdgeInsets.all(TSizes.md),
        margin: EdgeInsets.only(right: TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkGrey
            : TColors.light,
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
