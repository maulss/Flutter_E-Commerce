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

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginLoading = ref.watch(loginLoadingProvider);
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(17),
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 17),
          width: double.infinity,
          height: 425,
          decoration: BoxDecoration(
            color: ColorConstant.darkGreyBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome back !",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(2),
              const Text(
                "Sign in to your account",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorConstant.greyText,
                ),
              ),
              const Gap(26),
              FormWidget(
                hintText: "Email Address",
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: ColorConstant.greyText,
                ),
                controller: emailController,
              ),
              const Gap(12),
              FormWidget(
                hintText: "Password",
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: ColorConstant.greyText,
                ),
                controller: passwordController,
              ),
              const Gap(17),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorConstant.link,
                    ),
                  ),
                ),
              ),
              const Gap(17),
              ButtonWidget(
                text: loginLoading ? "Loading..." : "Login",
                onTap: loginLoading
                    ? null
                    : () async {
                        final email = emailController.text;
                        final password = passwordController.text;
                        ref.read(loginLoadingProvider.notifier).state = true;
                        if (email.isEmpty || password.isEmpty) {
                          showError(context, "Harap isi semua bidang");
                          return;
                        }
                        try {
                          final response = await ref.read(
                              loginProvider(email: email, password: password)
                                  .future);
                          if (response.success == true) {
                            showSuccess(context, "${response.message}");
                            context.pushReplacementNamed(RouteName.home);
                          } else {
                            showError(context, "${response.message}");
                          }
                        } catch (error) {
                          showError(context, error.toString());
                        } finally {
                          ref.read(loginLoadingProvider.notifier).state = false;
                        }
                      },
              ),
              const Gap(20),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have an account ? ',
                    style: const TextStyle(
                      fontSize: 15,
                      color: ColorConstant.greyText,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.black,
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushReplacementNamed(RouteName.register);
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
