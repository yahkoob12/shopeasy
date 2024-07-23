import 'package:flutter/material.dart';
import 'package:shopeasy/common/styles/spacing_style.dart';
import 'package:shopeasy/utils/constants/image_strings.dart';
import 'package:shopeasy/utils/constants/sizes.dart';
import 'package:shopeasy/utils/constants/text_strings.dart';
import 'package:shopeasy/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo , Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: TSizes.sm,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
