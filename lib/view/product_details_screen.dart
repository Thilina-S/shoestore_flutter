import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shoestore/models/product.dart';
import 'package:shoestore/utils/app_textstyles.dart';
import 'package:shoestore/view/widgets/size_selector.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'Details',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),

        actions: [
          //share button
          IconButton(
            onPressed: () =>
                _shareProduct(context, product.name, product.description),
            icon: Icon(
              Icons.share,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                //image
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    product.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                //favourite button
                Positioned(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      product.isFavourite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: product.isFavourite
                          ? Theme.of(context).primaryColor
                          : (isDark ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            // Product details
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.name,
                          style: AppTextStyle.withColor(
                            AppTextStyle.h2,
                            Theme.of(context).textTheme.headlineMedium!.color!,
                          ),
                        ),
                      ),
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: AppTextStyle.withColor(
                          AppTextStyle.h2,
                          Theme.of(context).textTheme.headlineMedium!.color!,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    product.category,
                    style: AppTextStyle.withColor(
                      AppTextStyle.bodyMedium,
                      isDark ? Colors.grey[400]! : Colors.grey[600]!,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Select Size',
                    style: AppTextStyle.withColor(
                      AppTextStyle.labelMedium,
                      Theme.of(context).textTheme.bodyLarge!.color!,
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.01),
                  //size selector
                  const SizeSelector(),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Description',
                    style: AppTextStyle.withColor(
                      AppTextStyle.labelMedium,
                      Theme.of(context).textTheme.bodyLarge!.color!,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    product.description,
                    style: AppTextStyle.withColor(
                      AppTextStyle.bodySmall,
                      isDark ? Colors.grey[400]! : Colors.grey[600]!,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //buttons
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                    ),
                    side: BorderSide(
                      color: isDark ? Colors.white70 : Colors.black12,
                    ),
                  ),
                  child: Text(
                    'Add to Cart',
                    style: AppTextStyle.withColor(
                      AppTextStyle.buttonMedium,
                      Theme.of(context).textTheme.bodyLarge!.color!,
                    ),
                  ),
                ),
              ),

              SizedBox(width: screenWidth * 0.04),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    'Buy Now',
                    style: AppTextStyle.withColor(
                      AppTextStyle.buttonMedium,
                      Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //share product
  Future<void> _shareProduct(
    BuildContext context,
    String productName,
    String description,
  ) async {
    // Get the render box for share position origin (required for iPad)
    final box = context.findRenderObject() as RenderBox?;

    const String shopLink = 'https://yourshop.com/product/cotton-tshirt';
    final String shareMessage = '$description\n\nShop now at $shopLink';

    try {
      final ShareResult result = await Share.share(
        shareMessage,
        subject: productName,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
      );

      if (result.status == ShareResultStatus.success) {
        debugPrint('Thank you for the sharing !');
      }
    } catch (e) {
      debugPrint('Error sharing product: $e');
    }
  }
}
