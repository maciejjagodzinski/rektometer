import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/features/cubit/root_cubit.dart';
import 'package:rektometer/features/pages/login/login_page.dart';
import 'package:rektometer/features/pages/rektometer/rektometer_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rektometer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xffe65100),
          secondary: Color(0xffe65100),
          onPrimary: Color(0xffffffff),
        ),
        cardTheme: CardTheme(
          color: const Color(0x1fffffff),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(5)),
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.openSans(
              fontSize: 81, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          headline2: GoogleFonts.openSans(
              fontSize: 50, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          headline3:
              GoogleFonts.openSans(fontSize: 40, fontWeight: FontWeight.w400),
          headline4: GoogleFonts.openSans(
              fontSize: 29, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline5:
              GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w400),
          headline6: GoogleFonts.openSans(
              fontSize: 17, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          subtitle1: GoogleFonts.openSans(
              fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle2: GoogleFonts.openSans(
              fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          bodyText1: GoogleFonts.openSans(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyText2: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: GoogleFonts.openSans(
              fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: GoogleFonts.openSans(
              fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: GoogleFonts.openSans(
              fontSize: 8, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),
        scaffoldBackgroundColor: const Color(0x00121212),
        backgroundColor: const Color(0xff121212),
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit()..start(),
      child: BlocListener<RootCubit, RootState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? "Error";
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                errorMessage,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red[200],
            ));
          }
        },
        child: BlocBuilder<RootCubit, RootState>(
          builder: (context, state) {
            final user = state.user;

            if (state.status == Status.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (user == null) {
              return LoginPage();
            }
            return const RektometerPage();
          },
        ),
      ),
    );
  }
}
