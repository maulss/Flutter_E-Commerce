// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/providers/profile/profile_provider.dart';
import 'package:flutter_ecommerce/providers/token/token_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/error_load_data_widget.dart';
import 'package:flutter_ecommerce/widget/form_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AboutMePage extends ConsumerStatefulWidget {
  const AboutMePage({super.key});

  @override
  ConsumerState<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends ConsumerState<AboutMePage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(getUserProvider);
    final updateLoading = ref.watch(updateUserLoadingProvider);
    final passwordLoading = ref.watch(updatePasswordLoadingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: userData.when(
        data: (data) {
          final dataUser = data.data;
          fullNameController.text = dataUser?.name ?? "-";
          emailController.text = dataUser?.email ?? "-";
          phoneNumberController.text = dataUser?.phoneNumber ?? "-";
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Gap(17),
                  const Text(
                    "Personal Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.black,
                    ),
                  ),
                  const Gap(14),
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          height: 117,
                          width: 117,
                          decoration: const BoxDecoration(
                            color: ColorConstant.primary,
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: _imageFile != null
                                ? Image.file(
                                    _imageFile!,
                                    fit: BoxFit.cover,
                                    width: 117,
                                    height: 117,
                                  )
                                : (dataUser?.profilePicture != null
                                    ? Image.network(
                                        dataUser!.profilePicture,
                                        fit: BoxFit.cover,
                                        width: 117,
                                        height: 117,
                                      )
                                    : const Icon(
                                        Icons.person_outline,
                                        size: 60,
                                        color: ColorConstant.white,
                                      )),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorConstant.darkPrimary,
                            ),
                            child: IconButton(
                              onPressed: _showPickerOptions,
                              icon: const Icon(
                                Icons.camera_alt_outlined,
                                color: ColorConstant.white,
                                size: 15,
                              ),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(6),
                  FormWidget(
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: ColorConstant.greyText,
                    ),
                    hintText: "Full Name",
                    controller: fullNameController,
                  ),
                  const Gap(6),
                  FormWidget(
                    controller: emailController,
                    hintText: "Email Address",
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: ColorConstant.greyText,
                    ),
                  ),
                  const Gap(6),
                  FormWidget(
                    controller: phoneNumberController,
                    hintText: "Phone Number",
                    prefixIcon: const Icon(
                      Icons.phone_android_outlined,
                      color: ColorConstant.greyText,
                    ),
                  ),
                  const Gap(24),
                  ButtonWidget(
                    text: updateLoading ? "Loading..." : "Update Profile",
                    onTap: updateLoading
                        ? null
                        : () async {
                            final fullName = fullNameController.text;
                            final email = emailController.text;
                            final phoneNumber = phoneNumberController.text;
                            ref.read(updateUserLoadingProvider.notifier).state =
                                true;
                            try {
                              final response =
                                  await ref.read(updateUserProvider(
                                fullName: fullName,
                                email: email,
                                phoneNumber: phoneNumber,
                                profilePicture: _imageFile,
                              ).future);
                              if (response.success == true) {
                                showSuccess(context, "${response.message}");
                                ref.invalidate(getUserProvider);
                              } else {
                                showError(context, "${response.message}");
                              }
                            } catch (e) {
                              showError(context, e.toString());
                            } finally {
                              ref
                                  .read(updateUserLoadingProvider.notifier)
                                  .state = false;
                            }
                          },
                  ),
                  const Gap(34),
                  const Text(
                    "Change Password",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.black,
                    ),
                  ),
                  const Gap(14),
                  FormWidget(
                    hintText: "Password Lama",
                    controller: passwordController,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.lock_outline,
                        color: ColorConstant.greyText,
                      ),
                    ),
                  ),
                  const Gap(6),
                  FormWidget(
                    hintText: "Password Baru",
                    controller: newPasswordController,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.lock_outline,
                        color: ColorConstant.greyText,
                      ),
                    ),
                  ),
                  const Gap(24),
                  ButtonWidget(
                    text: "Change Password",
                    onTap: () {
                      if (passwordController.text.isEmpty ||
                          newPasswordController.text.isEmpty) {
                        showError(context, "Harap isi semua bidang");
                        return;
                      }
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              passwordLoading
                                  ? "Loading..."
                                  : "Change Password",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: ColorConstant.black,
                              ),
                            ),
                            content: const Text(
                              "Are you sure you want to change password?",
                              style: TextStyle(
                                fontSize: 18,
                                color: ColorConstant.greyText,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  context.pop();
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
                                  final password = passwordController.text;
                                  final newPassword =
                                      newPasswordController.text;
                                  ref
                                      .read(updatePasswordLoadingProvider
                                          .notifier)
                                      .state = true;
                                  try {
                                    final response = await ref.read(
                                        ChangePasswordProvider(
                                                oldPassword: password,
                                                newPassword: newPassword)
                                            .future);
                                    if (response.success == true) {
                                      showSuccess(
                                          context, "${response.message}");
                                      final prefs =
                                          await SharedPreferences.getInstance();
                                      await prefs.remove('token');
                                      ref.read(tokenProvider.notifier).state =
                                          null;
                                      context.pushReplacementNamed(
                                          RouteName.login);
                                    } else {
                                      showError(context, "${response.message}");
                                    }
                                  } catch (e) {
                                    showError(context, e.toString());
                                  } finally {
                                    context.pop();
                                    ref
                                        .read(updatePasswordLoadingProvider
                                            .notifier)
                                        .state = false;
                                  }
                                },
                                child: const Text("Change"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: ColorConstant.primary,
          ),
        ),
        error: (error, stackTrace) => ErrorLoadDataWidget(
          text: error.toString(),
        ),
      ),
    );
  }
}
