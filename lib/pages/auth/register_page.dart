// ignore_for_file: use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/providers/auth/auth_provider.dart';
import 'package:flutter_ecommerce/providers/loading/loading_provider.dart';
import 'package:flutter_ecommerce/routers/route_name.dart';
import 'package:flutter_ecommerce/utils/message.dart';
import 'package:flutter_ecommerce/widget/buttom_widget.dart';
import 'package:flutter_ecommerce/widget/form_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final signupLoading = ref.watch(signupLoadingProvider);
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(17),
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 17),
          width: double.infinity,
          height: 465,
          decoration: BoxDecoration(
            color: ColorConstant.darkGreyBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(2),
              const Text(
                "Quickly create account",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorConstant.greyText,
                ),
              ),
              const Gap(26),
              FormWidget(
                controller: emailController,
                hintText: "Email Address",
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: ColorConstant.greyText,
                ),
              ),
              const Gap(12),
              FormWidget(
                controller: phoneNumberController,
                hintText: "Phone Number",
                prefixIcon: const Icon(
                  Icons.phone_android_outlined,
                  color: ColorConstant.greyText,
                ),
              ),
              const Gap(12),
              FormWidget(
                controller: passwordController,
                hintText: "Password",
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.lock_outline,
                    color: ColorConstant.greyText,
                  ),
                ),
              ),
              const Gap(17),
              ButtonWidget(
                text: signupLoading ? "Loading..." : "Sign Up",
                onTap: signupLoading
                    ? null
                    : () async {
                        final email = emailController.text;
                        final phoneNumber = phoneNumberController.text;
                        final password = passwordController.text;

                        if (email.isEmpty ||
                            phoneNumber.isEmpty ||
                            password.isEmpty) {
                          showError(context, "Harap isi semua bidang");
                          return;
                        }

                        ref.read(signupLoadingProvider.notifier).state = true;

                        try {
                          final response = await ref.read(registerProvider(
                            email: email,
                            phoneNumber: phoneNumber,
                            password: password,
                          ).future);

                          if (response.success == true) {
                            showSuccess(context, "${response.message}");
                            context.pushReplacementNamed(RouteName.login);
                          } else {
                            showError(context, "${response.message}");
                          }
                        } catch (error) {
                          showError(context, error.toString());
                        } finally {
                          ref.read(signupLoadingProvider.notifier).state =
                              false;
                        }
                      },
              ),
              const Gap(20),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account ? ',
                    style: const TextStyle(
                      fontSize: 15,
                      color: ColorConstant.greyText,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.black,
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushReplacementNamed(RouteName.login);
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
