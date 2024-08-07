import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopeasy/utils/constants/colors.dart';
import 'package:shopeasy/utils/constants/sizes.dart';
import 'package:shopeasy/utils/device/device_utility.dart';
import 'package:shopeasy/utils/helpers/helper_functions.dart';

class TSearchBarContainer extends StatelessWidget {
  const TSearchBarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
            border: showBorder ? Border.all(color: TColors.grey) : null,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? TColors.darkerGrey : Colors.grey,
              ),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}