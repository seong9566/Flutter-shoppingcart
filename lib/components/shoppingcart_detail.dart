import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          _buildDetailNameAndPrice(),
          _buildDetailNameAndReviewCount(),
          _buildDetailColorOptions(),
          _buildDetailButton(),
        ],
      ),
    );
  }

  // 메서드화 시켜준다.
  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$699",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailNameAndReviewCount() {
    return SizedBox();
  }

  Widget _buildDetailColorOptions() {
    return SizedBox();
  }

  Widget _buildDetailIcons() {
    return SizedBox();
  }

  Widget _buildDetailButton() {
    return SizedBox();
  }
}
