import 'package:flutter/material.dart';
import 'package:flutter_batch_12/module_16/CRUD/productcontroller.dart';
import 'package:flutter_batch_12/module_16/CRUD/widget/product_card.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  ProductController productController = ProductController();

  Future fetchData() async {
    await productController.fetchProduct();
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product CRUD'),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, childAspectRatio: 0.8),
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            var product = productController.products[index];
            return ProductCard(product: product,);
          }),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child:Icon(Icons.add) ,),
    );
  }
}

