import 'package:flutter/material.dart';
import 'package:shopeasy/common/widget/custom_shapes/Container/rounded_container.dart';
import 'package:shopeasy/common/widget/images/circular_image.dart';
import 'package:shopeasy/common/widget/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:shopeasy/utils/constants/colors.dart';
import 'package:shopeasy/utils/constants/enums.dart';
import 'package:shopeasy/utils/constants/image_strings.dart';
import 'package:shopeasy/utils/constants/sizes.dart';
import 'package:shopeasy/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// --Icons
            Flexible(
              child: TCircularImage(
                image: TImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            /// ---- Icon
            // Container(
            //   width: 56,
            //   height: 56,
            //   padding: EdgeInsets.all(TSizes.sm),
            //   decoration: BoxDecoration(
            //     color: THelperFunctions.isDarkMode(context)
            //         ? TColors.black
            //         : TColors.white,
            //     borderRadius: BorderRadius.circular(100),
            //   ),
            //   child: Image(
            //     image: AssetImage(TImages.clothIcon),
            //     color: THelperFunctions.isDarkMode(context)
            //         ? TColors.white
            //         : TColors.dark,
            //   ),
            // )

            /// --- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '999+ Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
