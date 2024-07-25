import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopeasy/common/widget/signup/form_divider.dart';
import 'package:shopeasy/common/widget/signup/social_buttons.dart';
import 'package:shopeasy/features/authentication/screens/signup/widgets/signupform.dart';
import 'package:shopeasy/utils/constants/sizes.dart';
import 'package:shopeasy/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Form
              TSignupForm(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Social Buttons
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
