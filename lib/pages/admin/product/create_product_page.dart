// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/providers/product/product_provider.dart';
import 'package:flutter_ecommerce/providers/profile/profile_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/form_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class CreateProductPage extends ConsumerStatefulWidget {
  const CreateProductPage({super.key});

  @override
  ConsumerState<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends ConsumerState<CreateProductPage> {
  String? selectedCategoryId;
  bool isFeatured = false;
  bool isNew = false;
  File? _imageFile;

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
              leading: const Icon(
                Icons.photo_library,
                color: ColorConstant.darkPrimary,
              ),
              title: const Text('Pilih dari Galeri'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.camera_alt,
                color: ColorConstant.darkPrimary,
              ),
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

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final getUserData = ref.watch(getUserProvider);
    final userId = getUserData.when(
      data: (data) {
        return data.data?.userId;
      },
      error: (error, stackTrace) {
        return null;
      },
      loading: () {
        return null;
      },
    );
    final categoryProductData = ref.watch(getCategoryProvider);
    final createProductLoading = ref.watch(createProductLoadingProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Product"),
      ),
      body: SafeArea(
        child: categoryProductData.when(
          data: (data) {
            final dataCategory = data.data;
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
                      hint: const Text(
                        "Product Category",
                        style: TextStyle(color: ColorConstant.greyText),
                      ),
                      items: dataCategory?.categories?.map((category) {
                        return DropdownMenuItem<String>(
                          value: category.categoryId,
                          child: Text(category.name.toString()),
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
                            color: ColorConstant.primary,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _imageFile == null
                            ? const Center(
                                child: Text(
                                  "Product Image",
                                  style: TextStyle(color: ColorConstant.black),
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  _imageFile!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
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
                      text: createProductLoading
                          ? "Loading..."
                          : "Create Product",
                      onTap: createProductLoading
                          ? null
                          : () async {
                              if (_nameController.text.isEmpty ||
                                  _descriptionController.text.isEmpty ||
                                  _priceController.text.isEmpty ||
                                  _stockController.text.isEmpty ||
                                  selectedCategoryId == null ||
                                  _imageFile == null) {
                                showError(context, "Please fill all fields");
                                return;
                              } else {
                                try {
                                  ref
                                      .read(
                                          createProductLoadingProvider.notifier)
                                      .state = true;
                                  final response =
                                      await ref.read(createProductProvider(
                                    productName: _nameController.text,
                                    description: _descriptionController.text,
                                    price:
                                        int.tryParse(_priceController.text) ??
                                            0,
                                    stock:
                                        int.tryParse(_stockController.text) ??
                                            0,
                                    categoryId: selectedCategoryId ?? "",
                                    createdById: userId ?? "",
                                    imageUrl: _imageFile ?? File(""),
                                    isFeatured: isFeatured,
                                    isNew: isNew,
                                  ).future);
                                  if (response.success == true) {
                                    showSuccess(
                                        context, response.message ?? "");
                                    context.pop();
                                    ref.refresh(getProductProvider);
                                  } else {
                                    showError(context, response.message ?? "");
                                  }
                                } catch (e) {
                                  showError(context, e.toString());
                                } finally {
                                  ref
                                      .read(
                                          createProductLoadingProvider.notifier)
                                      .state = false;
                                }
                              }
                            },
                    )
                  ],
                ),
              ),
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: ErrorLoadDataWidget(
                text: error.toString(),
              ),
            );
          },
          loading: () {
            return const Center(
              child: LoadingWidget(),
            );
          },
        ),
      ),
    );
  }
}

class WidgetTitle extends StatelessWidget {
  const WidgetTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
