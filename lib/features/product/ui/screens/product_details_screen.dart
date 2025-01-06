import 'package:ecommerce/app/app_colors.dart';
import 'package:ecommerce/features/product/ui/widgets/color_picker_widget.dart';
import 'package:ecommerce/features/product/ui/widgets/product_image_carousel_slider.dart';
import 'package:ecommerce/features/common/ui/widgets/product_quantity_inc_dec_button.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});

  static const String name = '/product/product-details';
  final int productId;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        children: [
          const ProductImageCarouselSlider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Nike shoe Jordan4 - New year Special deal',
                                style: textTheme.titleMedium,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Wrap(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.0',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Reviews'),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: AppColors.themeColor,
                                        borderRadius: BorderRadius.circular(6)),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16,),
                        ProductQuantityIncDecButton(
                          onChange: (int value) {},
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Text(
                      'color',
                      style: textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ColorPickerWidget(
                      colors: ['Red', 'green', 'yellow', 'pink'],
                      onColorSelected: (String selectedColor) {},
                    ),
                    SizedBox(height: 16,),
                    Text(
                      'size',
                      style: textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ColorPickerWidget(
                      colors: ['S', 'M', 'L', 'XL','XXL'],
                      onColorSelected: (String selectedColor) {},
                    ),
                    SizedBox(height: 16,),
                    Text(
                      'Description',
                      style: textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '''The Jordan 4s revered design was celebrated for so many reasons. One being its mirroring charm to its early AJ3 predecessor. Both models possess a sleek mid-cut rise and signature visible Air that shrouds the midsole ensuring each transition and swift movement on the court is cloud-like..The Jordan 4s revered design was celebrated for so many reasons. One being its mirroring charm to its early AJ3 predecessor. Both models possess a sleek mid-cut rise and signature visible Air that shrouds the midsole ensuring each transition and swift movement on the court is cloud-like.''',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildAddToCartContainer(textTheme)
        ],
      ),
    );
  }

  Widget _buildAddToCartContainer(TextTheme textTheme) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColors.themeColor.withOpacity(0.15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Price',
                style: textTheme.titleSmall,
              ),
              Text(
                '\$1000',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColors.themeColor),
              )
            ],
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(onPressed: () {}, child: Text('Add to cart')),
          )
        ],
      ),
    );
  }
}
