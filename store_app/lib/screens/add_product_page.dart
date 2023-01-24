import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/add_product_services.dart';
import 'package:store_app/widgets/custom_from_text_field.dart';

import '../helper/show_snack_bar.dart';
import '../widgets/custom_button.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);
  static String id = 'AddProductPage';

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String? ProductName, desc, image, category;
  bool isLoading = false;
  double? price;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Product',
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.transparent, //transparent: pre page 's color
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    ProductName = data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    category = data;
                  },
                  hintText: 'Category',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'description',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  inputType: TextInputType.number,
                  onChanged: (data) {
                    price = double.parse(data);
                  },
                  hintText: 'price',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: 'Add',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await AddProduct();
                      showSnackBar(context, 'success');
                    } catch (e) {
                      showSnackBar(context, e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> AddProduct() async {
    await AddProductServices().addProduct(
        title: ProductName!,
        price: price.toString(),
        desc: desc!,
        image: image!,
        category: category!);
  }
}
