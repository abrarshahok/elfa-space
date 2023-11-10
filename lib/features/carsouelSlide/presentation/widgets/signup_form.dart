import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/authentication_methods.dart';
import 'custom_textfield.dart';
import 'log_in_button.dart';
import 'social_login_button.dart';

class SignUpForm extends StatefulWidget {
  static const routeName = '/signup-screen';
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignUpForm> {
  final _auth = AuthenticationMethods();
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    _phoneNumController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(MyImages.elfaSpaceLogo),
                SizedBox(height: 5.h),
                Text(
                  'Sign up',
                  style: MyFonts.getPoppin(
                    color: const Color(0xFF484848),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.h),
                CutsomTextField(
                  controller: _emailController,
                  type: 'Username',
                  uppterType: 'Username',
                  errorText: "Enter your Name",
                  hidetext: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _nameController,
                  type: 'Email or Phone',
                  uppterType: 'Email',
                  errorText: "Enter your email",
                  hidetext: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _passwordController,
                  type: 'Password',
                  uppterType: 'Password',
                  errorText: "Enter your password",
                  hidetext: true,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        color: Color(0xFFD9D9D9),
                        Icons.check_box_outline_blank,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 283,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'I agree to the ',
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Term of services',
                              style: TextStyle(
                                color: Color(0xFFB30ACE),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' & ',
                              style: TextStyle(
                                color: Color(0xFF484848),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy policy',
                              style: TextStyle(
                                color: Color(0xFFB30ACE),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                LoginInButton(
                    widthh: 331,
                    heightt: 46,
                    text: 'Sign Up',
                    color: const Color(0xffB409CE),
                    ontap: () {
                      if (_formkey.currentState!.validate()) {
                        _auth.signUP(
                            email: _emailController.text.toString(),
                            password: _passwordController.text.toString(),
                            ctx: context,
                            phone: _phoneNumController.text.toString());
                      }
                    }),
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
                      "Already have an account?",
                      style: MyFonts.getPoppin(
                        color: const Color(0xFF263238),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LogInForm.routeName);
                      },
                      child: Text(
                        'Login',
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
