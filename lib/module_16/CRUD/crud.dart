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
    if (mounted) setState(() {});
  }

  productDialog(
      {String? id,
        String? name,
        String? img,
        int? qty,
        int? uniPrice,
        int? totalPrice,
        required bool isUpdate}) {
    TextEditingController productNameController =
    TextEditingController(text: name);
    TextEditingController productIMGController =
    TextEditingController(text: img);
    TextEditingController productQTYController =
    TextEditingController(text: qty != null ? qty.toString() : '');
    TextEditingController productUnitPriceController = TextEditingController(
        text: uniPrice != null ? uniPrice.toString() : '');
    TextEditingController productTotalPriceController = TextEditingController(
        text: totalPrice != null ? totalPrice.toString() : '');

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(isUpdate ? 'Update product' : 'Add product'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: productNameController,
                decoration: InputDecoration(labelText: 'Product Name'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productIMGController,
                decoration: InputDecoration(labelText: 'Product img'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productQTYController,
                decoration: InputDecoration(labelText: 'Product qty'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productUnitPriceController,
                decoration:
                InputDecoration(labelText: 'Product unit price'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: productTotalPriceController,
                decoration:
                InputDecoration(labelText: 'Product total price'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel')),
                  ElevatedButton(
                      onPressed: () async {
                        if (isUpdate) {
                          await productController.UpdateProduct(
                              id.toString(),
                              productNameController.text,
                              productIMGController.text,
                              int.parse(productQTYController.text),
                              int.parse(productUnitPriceController.text),
                              int.parse(productTotalPriceController.text));
                        } else {
                          await productController.createProduct(
                              productNameController.text,
                              productIMGController.text,
                              int.parse(productQTYController.text),
                              int.parse(productUnitPriceController.text),
                              int.parse(productTotalPriceController.text));
                        }

                        await fetchData();
                        Navigator.pop(context);
                      },
                      child: Text('Save'))
                ],
              )
            ],
          ),
        ));
  }

  @override
  void initState() {
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
            return ProductCard(
              product: product,
              onDelete: () async {
                final value = await productController
                    .DeleteProduct(product.sId.toString());
                if (value) {
                  await fetchData();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Product Deleted')));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Something went wrong...!')));
                }
              },
              onEdit: () {
                productDialog(
                    name: product.productName,
                    img: product.img,
                    id: product.sId,
                    uniPrice: product.unitPrice,
                    totalPrice: product.totalPrice,
                    qty: product.qty,
                    isUpdate: true);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          productDialog(isUpdate: false);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
