// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/pages/admin/product/create_product_page.dart';
import 'package:flutter_ecommerce/providers/category/category_provider.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/form_widget.dart';

class EditCategoryPage extends ConsumerStatefulWidget {
  const EditCategoryPage({
    super.key,
    required this.categoryId,
  });
  final String categoryId;

  @override
  ConsumerState<EditCategoryPage> createState() => _EditCategoryPageState();
}

class _EditCategoryPageState extends ConsumerState<EditCategoryPage> {
  bool isInitialized = false;
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

  final TextEditingController _categoryId = TextEditingController();
  final TextEditingController _categoryName = TextEditingController();
  final TextEditingController _categoryDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final updateCategoryLoading = ref.watch(updateCategoryLoadingProvider);
    final getCateggoryData = ref.watch(getDetailCategoryProvider(
      categoryId: widget.categoryId,
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Category"),
      ),
      body: SafeArea(
        child: getCateggoryData.when(
          data: (data) {
            final category = data.data;
            if (!isInitialized && category != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _categoryId.text = category.categoryId ?? "";
                _categoryName.text = category.name ?? "";
                _categoryDescription.text = category.description ?? "";
                setState(() {
                  isInitialized = true;
                });
              });
            }
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const WidgetTitle(title: "Id"),
                    FormWidget(
                        controller: _categoryId,
                        hintText: "Category Id",
                        onChanged: (value) {}),
                    const Gap(20),
                    const WidgetTitle(title: "Name"),
                    FormWidget(
                      controller: _categoryName,
                      hintText: "Category Name",
                      onChanged: (value) {},
                    ),
                    const Gap(20),
                    const WidgetTitle(title: "Description"),
                    FormWidget(
                      controller: _categoryDescription,
                      hintText: "Category Description",
                      onChanged: (value) {},
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
                        child: _imageFile != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  _imageFile!,
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              )
                            : category?.imageUrl != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      category!.imageUrl!,
                                      fit: BoxFit.fill,
                                      width: double.infinity,
                                      height: 150,
                                    ),
                                  )
                                : const Center(
                                    child: Text(
                                      "Category Image",
                                      style:
                                          TextStyle(color: ColorConstant.black),
                                    ),
                                  ),
                      ),
                    ),
                    const Gap(20),
                    ButtonWidget(
                      text: updateCategoryLoading
                          ? "Loading..."
                          : "Update Category",
                      onTap: updateCategoryLoading
                          ? null
                          : () async {
                              if (_categoryId.text.isEmpty ||
                                  _categoryName.text.isEmpty ||
                                  _categoryDescription.text.isEmpty) {
                                showError(context, "Please fill all fields");
                                return;
                              }
                              ref
                                  .read(updateCategoryLoadingProvider.notifier)
                                  .state = true;
                              try {
                                final response =
                                    await ref.read(updateCategoryProvider(
                                  categoryId: _categoryId.text,
                                  categoryName: _categoryName.text,
                                  description: _categoryDescription.text,
                                  imageUrl: _imageFile,
                                ).future);
                                if (response.success == true) {
                                  showSuccess(
                                      context, "Update Category Success");
                                  ref.refresh(getCategoryProvider);
                                  context.pop();
                                } else {
                                  showError(context, response.message ?? "");
                                }
                              } catch (e) {
                                showError(context, e.toString());
                              } finally {
                                ref
                                    .read(
                                        updateCategoryLoadingProvider.notifier)
                                    .state = false;
                              }
                            },
                    ),
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
                        final response = await ref.read(deleteCategoryProvider(
                                categoryId: widget.categoryId)
                            .future);
                        if (response.success == true) {
                          showSuccess(context, response.message ?? "");
                          context.pop();
                          context.pop();
                          ref.refresh(getCategoryProvider);
                        } else {
                          showError(context, response.message ?? "");
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
