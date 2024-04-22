import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:periods_manager/global/app_assets.dart';
import '../global/app_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to\nPeriods Manager App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                Image.asset(
                  AppAssets.appLogo,
                  width: 100.0,
                  height: 100.0,
                ),
                const SizedBox(height: 40.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    filled: true,
                    prefixIcon: Icon(
                      CupertinoIcons.person,
                      color: AppColors.primaryColor,
                    ),
                    fillColor: AppColors.secondaryColor,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    prefixIcon: Icon(
                      CupertinoIcons.mail,
                      color: AppColors.primaryColor,
                    ),
                    fillColor: AppColors.secondaryColor,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      CupertinoIcons.lock,
                      color: AppColors.primaryColor,
                    ),
                    filled: true,
                    suffixIcon: Icon(
                      CupertinoIcons.eye,
                      color: AppColors.primaryColor,
                    ),
                    fillColor: AppColors.secondaryColor,
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.secondaryColor),
                  child: const Center(
                      child: Text(
                    'Create Account',
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Already have an account? Log in',
                  style: TextStyle(color: AppColors.secondaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
