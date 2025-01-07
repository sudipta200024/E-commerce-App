import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../../../common/ui/widgets/product_quantity_inc_dec_button.dart';

class CartProductItemWidget extends StatelessWidget {
  const CartProductItemWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
        elevation: 1,
        color: Colors.white,
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 14),
          child: Row(
            children: [
              Image.asset(
                AssetsPath.dummyImagePNG,
                width: 100,
                height: 100,
                fit: BoxFit.scaleDown,
              ),
              Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Nike Jordan Shoe New Year special Deal',
                                  maxLines: 1,
                                  style: textTheme.bodyLarge?.copyWith(overflow: TextOverflow.ellipsis),
                                ),
                                const Row(
                                  children: [
                                    Text('Color: Red'),
                                    SizedBox(width: 8,),
                                    Text('Size: XL')
                                  ],
                                )
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_outline),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('\$100',style: TextStyle(
                              color: AppColors.themeColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),),
                          ProductQuantityIncDecButton(
                              onChange: (int noOfItem) {})
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
