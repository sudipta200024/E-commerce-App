import 'package:ecommerce/app/assets_path.dart';
import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controllers.dart';
import 'package:ecommerce/features/common/ui/widgets/category_item_widget.dart';
import 'package:ecommerce/features/home/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../widgets/app_bar_icon_button.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/home_section_header.dart';
import '../../../common/ui/widgets/product_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              ProductSearchBar(controller: _searchBarController),
              const SizedBox(
                height: 8,
              ),
              const HomeCarouselSlider(),
              const SizedBox(
                height: 8,
              ),
              HomeSectionHeader(
                title: 'Category',
                onTap: () {
                  Get.find<MainBottomNavController>().moveToCategory();
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 100, // Specify height to prevent overflow issues
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: CategoryItemWidgets(),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              HomeSectionHeader(
                title: 'Popular',
                onTap: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 195,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: ProductItemWidget(),
                  ),
                ),
              ),
              HomeSectionHeader(
                title: 'Special',
                onTap: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 195,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: ProductItemWidget(),
                  ),
                ),
              ),
              HomeSectionHeader(
                title: 'New',
                onTap: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 195,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: ProductItemWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: _buildAppBar(),
    );
  }

  // List<Widget> _getCategoryList() {
  //   List<Widget> cateGoryList = [];
  //   for (int i = 0; i < 10; i++) {
  //     cateGoryList.add(
  //       const Padding(
  //         padding: EdgeInsets.only(right: 16),
  //         child: CategoryItemWidgets(),
  //       ),
  //     );
  //   }
  //   return cateGoryList;
  // }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.navBarAppLogoSVG),
      actions: [
        AppBarIconButton(
          icon: Icons.person_2_outlined,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          icon: Icons.call_outlined,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}

