// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/pages/admin/product/create_product_page.dart';
import 'package:flutter_ecommerce/providers/category/category_provider.dart';
import 'package:flutter_ecommerce/providers/home/home_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/form_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class CreateCategoryPage extends ConsumerStatefulWidget {
  const CreateCategoryPage({super.key});

  @override
  ConsumerState<CreateCategoryPage> createState() => _CreateCategoryPageState();
}

class _CreateCategoryPageState extends ConsumerState<CreateCategoryPage> {
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
    final createcategoryLoading = ref.watch(createCategoryLoadingProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Category"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                    child: _imageFile == null
                        ? const Center(
                            child: Text(
                              "Category Image",
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
                ButtonWidget(
                  text:
                      createcategoryLoading ? "Loading..." : "Create Category",
                  onTap: createcategoryLoading
                      ? null
                      : () async {
                          if (_categoryId.text.isEmpty ||
                              _categoryName.text.isEmpty ||
                              _categoryDescription.text.isEmpty ||
                              _imageFile == null) {
                            showError(context, "Please fill all fields");
                          } else {
                            ref
                                .read(createCategoryLoadingProvider.notifier)
                                .state = true;
                            try {
                              final response =
                                  await ref.read(CreateCategoryProvider(
                                categoryName: _categoryName.text,
                                categoryId: _categoryId.text,
                                description: _categoryDescription.text,
                                imageUrl: _imageFile,
                              ).future);
                              if (response.success == true) {
                                showSuccess(
                                    context, response.message.toString());
                                context.pop();
                                ref.refresh(getCategoryProvider);
                              } else {
                                showError(context, response.message.toString());
                              }
                            } catch (e) {
                              showError(context, e.toString());
                            } finally {
                              ref
                                  .read(createCategoryLoadingProvider.notifier)
                                  .state = false;
                            }
                          }
                        },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
