// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/providers/product/product_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/form_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class EditProductPage extends ConsumerStatefulWidget {
  const EditProductPage({super.key, required this.productId});
  final String productId;

  @override
  ConsumerState<EditProductPage> createState() => _EditProductPageState();
}

class _EditProductPageState extends ConsumerState<EditProductPage> {
  String? selectedCategoryId;
  bool isFeatured = false;
  bool isNew = false;
  File? _imageFile;
  bool isInitialized = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: source);
    if (picked != null) {
      setState(() {
        _imageFile = File(picked.path);
      });
    }
  }

  void _showPickerOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library,
                  color: ColorConstant.darkPrimary),
              title: const Text('Pilih dari Galeri'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt,
                  color: ColorConstant.darkPrimary),
              title: const Text('Ambil dari Kamera'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categoryProductData = ref.watch(getCategoryProvider);
    final detailProductData =
        ref.watch(getDetailProductProvider(productId: widget.productId));
    final updateDataLoading = ref.watch(updateProductLoadingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Product"),
      ),
      body: SafeArea(
        child: detailProductData.when(
          data: (productDetail) {
            final product = productDetail.data;

            if (!isInitialized && product != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _nameController.text = product.name ?? "";
                _descriptionController.text = product.description ?? "";
                _priceController.text = product.price?.toString() ?? "";
                _stockController.text = product.stock?.toString() ?? "";
                selectedCategoryId = product.categoryId;
                isFeatured = product.isFeatured ?? false;
                isNew = product.isNew ?? false;
                setState(() {
                  isInitialized = true;
                });
              });
            }

            return categoryProductData.when(
              data: (categoryData) {
                final dataCategory = categoryData.data;
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const WidgetTitle(title: "Name"),
                        FormWidget(
                          controller: _nameController,
                          hintText: "Product Name",
                          onChanged: (value) {},
                        ),
                        const Gap(20),
                        const WidgetTitle(title: "Description"),
                        FormWidget(
                          controller: _descriptionController,
                          hintText: "Product Description",
                          onChanged: (value) {},
                        ),
                        const Gap(20),
                        const WidgetTitle(title: "Price"),
                        FormWidget(
                          controller: _priceController,
                          hintText: "Product Price",
                          onChanged: (value) {},
                        ),
                        const Gap(20),
                        const WidgetTitle(title: "Stock"),
                        FormWidget(
                          controller: _stockController,
                          hintText: "Product Stock",
                          onChanged: (value) {},
                        ),
                        const Gap(20),
                        const WidgetTitle(title: "Category"),
                        DropdownButtonFormField<String>(
                          value: selectedCategoryId,
                          hint: const Text("Product Category",
                              style: TextStyle(color: ColorConstant.greyText)),
                          items: dataCategory?.categories?.map((category) {
                            return DropdownMenuItem<String>(
                              value: category.categoryId,
                              child: Text(category.name ?? "-"),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedCategoryId = value;
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorConstant.white,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 16),
                            hintStyle:
                                const TextStyle(color: ColorConstant.greyText),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: ColorConstant.border),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: ColorConstant.border),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          dropdownColor: ColorConstant.white,
                          iconEnabledColor: ColorConstant.greyText,
                        ),
                        const Gap(20),
                        const WidgetTitle(title: "Image"),
                        GestureDetector(
                          onTap: _showPickerOptions,
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConstant.primary, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: _imageFile != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.file(_imageFile!,
                                        fit: BoxFit.cover),
                                  )
                                : product?.imageUrl != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(product!.imageUrl!,
                                            fit: BoxFit.cover),
                                      )
                                    : const Center(
                                        child: Text("Product Image",
                                            style: TextStyle(
                                                color: ColorConstant.black))),
                          ),
                        ),
                        const Gap(20),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const WidgetTitle(title: "Is Featured"),
                                Checkbox(
                                  activeColor: ColorConstant.darkPrimary,
                                  checkColor: ColorConstant.white,
                                  value: isFeatured,
                                  onChanged: (value) {
                                    setState(() {
                                      isFeatured = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                            const Gap(20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const WidgetTitle(title: "Is New"),
                                Checkbox(
                                  activeColor: ColorConstant.darkPrimary,
                                  checkColor: ColorConstant.white,
                                  value: isNew,
                                  onChanged: (value) {
                                    setState(() {
                                      isNew = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Gap(20),
                        ButtonWidget(
                          text: updateDataLoading
                              ? "Loading..."
                              : "Update Product",
                          onTap: () async {
                            try {
                              ref
                                  .read(updateProductLoadingProvider.notifier)
                                  .state = true;
                              final response =
                                  await ref.read(updateProductProvider(
                                productId: widget.productId,
                                productName: _nameController.text,
                                description: _descriptionController.text,
                                price: int.tryParse(_priceController.text) ?? 0,
                                stock: int.tryParse(_stockController.text) ?? 0,
                                categoryId: selectedCategoryId ?? "",
                                isFeatured: isFeatured,
                                isNew: isNew,
                                imageUrl: _imageFile,
                              ).future);

                              if (response.success == true) {
                                showSuccess(
                                    context, response.message.toString());
                                context.pop();
                                ref.refresh(getProductProvider);
                              } else {
                                showError(context, response.message.toString());
                              }
                            } catch (e) {
                              showError(context, e.toString());
                              print(e);
                            } finally {
                              ref
                                  .read(updateProductLoadingProvider.notifier)
                                  .state = false;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              error: (error, stackTrace) =>
                  Center(child: ErrorLoadDataWidget(text: error.toString())),
              loading: () => const Center(child: LoadingWidget()),
            );
          },
          error: (error, stackTrace) =>
              Center(child: ErrorLoadDataWidget(text: error.toString())),
          loading: () => const Center(child: LoadingWidget()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text(
                  "Delete Product",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.black,
                  ),
                ),
                content: const Text(
                  "Are you sure you want to delete this product?",
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorConstant.greyText,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: ColorConstant.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () async {
                      try {
                        final response = await ref.read(
                            deleteProductProvider(productId: widget.productId)
                                .future);

                        if (response.success == true) {
                          showSuccess(context, response.message.toString());
                          context.pop();
                          context.pop();
                          ref.refresh(getProductProvider);
                        } else {
                          showError(context, response.message.toString());
                        }
                      } catch (e) {
                        showError(context, e.toString());
                      }
                    },
                    child: const Text("Delete"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}

class WidgetTitle extends StatelessWidget {
  const WidgetTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 16));
  }
}
