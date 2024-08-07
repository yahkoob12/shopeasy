import 'package:flutter/material.dart';
import 'package:shopeasy/common/widget/appbar/appbar.dart';
import 'package:shopeasy/common/widget/appbar/tabbar.dart';
import 'package:shopeasy/common/widget/custom_shapes/Container/search_container.dart';
import 'package:shopeasy/common/widget/layouts/grid_layout.dart';
import 'package:shopeasy/common/widget/brands/brand_card.dart';
import 'package:shopeasy/common/widget/productscart/cart_menu_icon.dart';
import 'package:shopeasy/common/widget/texts/section_heading.dart';
import 'package:shopeasy/features/shop/screens/store/widgets/category_tab.dart';
import 'package:shopeasy/utils/constants/colors.dart';
import 'package:shopeasy/utils/constants/sizes.dart';
import 'package:shopeasy/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        /// --- Appbar
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          actions: [
            TCartCounterIcon(iconColor: Colors.blue, onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          /// --- Header
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      /// ---- Search bar
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchBarContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      /// ---- Featured Brands
                      TSectionheading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections / 1.5,
                      ),

                      /// --- Brand GRID

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return TBrandCard(
                            showBorder: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),

                /// ----Tabs
                bottom: TTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electrics'),
                    ),
                    Tab(
                      child: Text('Cloths'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ],
                ),
              ),
            ];
          },

          /// --- Body
          body: TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
