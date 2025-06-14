import 'package:clevtask/Features/myCollection/presentation/views/collection_view.dart';
import 'package:clevtask/Features/welcome_view/presentation/views/widgets/have_an_account.dart';
import 'package:clevtask/core/constant/text_styles.dart';
import 'package:clevtask/core/utils/custom_botton.dart';
import 'package:clevtask/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(50),
            const Text('Sign in', style: AppTextStyles.title),
            Gap(70),
            ReusableTextField(
              label: 'Email',
              hintText: 'email@email.com',
              controller: emailController,
            ),
            const SizedBox(height: 30),

            ReusableTextField(
              label: 'Password',
              hintText: '••••••••',
              controller: passwordController,
              obscureText: !isPasswordVisible,
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xFFFFC107),
                ),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
            ),
            Gap(60),
            Center(
              child: CustomBotton(
                text: 'Continue',
                onTap: () {
                  Navigator.pushNamed(context, CollectionView.routeName);
                },
              ),
            ),
            Gap(48),
            HaveAnAccount(text: 'Can’t sign in?', action: 'Recover password'),
          ],
        ),
      ),
    );
  }
}
