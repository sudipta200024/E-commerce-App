import 'package:ecommerce/features/product/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class CategoryItemWidgets extends StatelessWidget {
  const CategoryItemWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, ProductListScreen.name,arguments: 'computer');
          },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppColors.themeColor.withAlpha((0.14 * 255).toInt()),
                    borderRadius: BorderRadius.circular(8)),
                child: const Icon(
                  Icons.computer,
                  size: 40,
                  color: AppColors.themeColor,
                ),
              ),
              const Text(
                'computer',
                style: TextStyle(
                    color: AppColors.themeColor, fontWeight: FontWeight.w500),
              )
            ],
          ),
        )
      ],
    );
  }
}
