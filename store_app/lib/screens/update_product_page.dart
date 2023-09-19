import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/helper/show_snack_bar.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_from_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({Key? key}) : super(key: key);
  static String id = 'UpdateProduct';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? ProductName, desc, image;
  bool isLoading = false;
  double? price;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Update Product',
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
                const SizedBox(
                  height: 100,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    ProductName = data;
                  },
                  hintText: 'Product Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'description',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  inputType: TextInputType.number,
                  onChanged: (data) {
                    price = double.parse(data);
                  },
                  hintText: 'price',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: 'Update',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await UpdateProduct(product);
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

  Future<void> UpdateProduct(ProductModel product) async {
    await UpdataProductServices().updateProduct(
        id: product.id,
        title: ProductName == null ? product.title : ProductName!,
        price: (price == null ? product.price : price!).toString(),
        desc: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        category: product.category);
    isLoading = false;
  }
}
