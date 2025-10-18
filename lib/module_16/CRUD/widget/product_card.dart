import 'package:flutter/material.dart';

import '../model/product_model.dart';

class ProductCard extends StatelessWidget {
  final Data product;
  const ProductCard({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: Image.network(
               ( product.img !=null && product.img.toString().startsWith('http')) ?
                  product.img.toString() : 'https://previews.123rf.com/images/sabinarahimova/sabinarahimova1809/sabinarahimova180900153/107444841-no-photo-vector-icon-isolated-on-transparent-background-no-photo-logo-concept.jpg' ),
            ),
            Text(
              product.productName.toString(),
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Price: \$${product.unitPrice} | QTY: ${product.qty}',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.orange,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
