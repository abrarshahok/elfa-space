import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/widgets/signup_form.dart';
import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants.dart';

import 'custom_textfield.dart';

import 'log_in_button.dart';
import '../provider/error_provider.dart';
import 'package:provider/provider.dart';
import '../../data/authentication_methods.dart';

class LogInForm extends StatefulWidget {
  static const routeName = '/login-screen';
  const LogInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm>
    with SingleTickerProviderStateMixin {
  final _auth = AuthenticationMethods();
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  bool _hidePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(MyImages.elfaSpaceLogo),
                SizedBox(height: 8.h),
                Text(
                  'Welcome Back',
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Please Log in to your Account',
                  style: MyFonts.getPoppin(
                    color: const Color(0xFFB30ACE),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CutsomTextField(
                  controller: _emailController,
                  type: 'Email or Phone',
                  uppterType: 'Email',
                  errorText: 'Enter Valid Email',
                  hidetext: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _passwordController,
                  type: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _hidePassword = !_hidePassword;
                      });
                    },
                    icon: Icon(
                      _hidePassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                  uppterType: 'Password',
                  errorText: 'Enter your password',
                  hidetext: !_hidePassword,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget password?',
                    style: MyFonts.getPoppin(
                      color: const Color(0xFFB30ACE),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Consumer<errorProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Column(
                        children: List.generate(
                      Provider.of<errorProvider>(context, listen: false)
                          .errors
                          .length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 12.sp,
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              value.errors[index],
                              style: TextStyle(
                                fontFamily: 'Monsterrat-Medium',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
                  },
                ),
                SizedBox(
                  height: 25.h,
                ),
                LoginInButton(
                  widthh: 331,
                  heightt: 46,
                  text: 'Log in',
                  color: Colors.purple,
                  ontap: () async {
                    if (_formKey.currentState!.validate()) {
                      await _auth.signIn(
                          email: _emailController.text.toString(),
                          password: _passwordController.text.toString(),
                          ctx: context);
                    }
                  },
                ),
                SizedBox(height: 50.h),
                Text(
                  'or Continue with',
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialLoginButton(
                      icon: MyIcons.google,
                      onTap: () {
                        _auth.signInWithGoogle(context);
                      },
                    ),
                    SocialLoginButton(
                      icon: MyIcons.facebook,
                      onTap: () {},
                    ),
                    SocialLoginButton(
                      icon: MyIcons.instagram,
                      onTap: () {},
                    ),
                    SocialLoginButton(
                      icon: MyIcons.twitter,
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: MyFonts.getPoppin(
                        color: const Color(0xFF263238),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SignUpForm.routeName);
                      },
                      child: Text(
                        'Sign up',
                        style: MyFonts.getPoppin(
                          color: const Color(0xFFB30ACE),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AnimatedContainer dot(int index, int currentPage) {
  return AnimatedContainer(
    margin: const EdgeInsets.only(right: 5),
    height: 11,
    width: currentPage == index ? 20 : 10,
    decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(10)),
    duration: const Duration(milliseconds: 200),
  );
}
