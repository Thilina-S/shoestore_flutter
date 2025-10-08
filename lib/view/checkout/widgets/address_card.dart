import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoestore/utils/app_textstyles.dart';

class AddressCardShipping extends StatelessWidget {
  const AddressCardShipping({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.2)
                : Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: AppTextStyle.withColor(
                        AppTextStyle.bodyLarge,
                        Theme.of(context).textTheme.bodyLarge!.color!,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '123 Main Street, Apt 48\nNew York, NY 1001',
                      style: AppTextStyle.withColor(
                        AppTextStyle.bodySmall,
                        Theme.of(context).textTheme.bodyLarge!.color!,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Theme.of(context).primaryColor,
              )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
