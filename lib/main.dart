import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';
import 'package:flutter_ecommerce/constant/go_router_provider.dart';
import 'package:flutter_ecommerce/providers/shared_pref/shared_pref_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstant.darkGreyBackground,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorConstant.white,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: ColorConstant.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: IconThemeData(color: ColorConstant.black),
        ),
      ),
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routeInformationProvider:
          ref.watch(routerProvider).routeInformationProvider,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
    );
  }
}
