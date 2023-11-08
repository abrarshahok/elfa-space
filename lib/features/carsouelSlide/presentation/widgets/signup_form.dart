import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/authentication_methods.dart';
import 'custom_textfield.dart';
import 'diff_login_button.dart';
import 'log_in_button.dart';

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
        padding: EdgeInsets.all(26.h),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'By continuing, you agree to our Terms\n of Service & Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[700], fontSize: 14.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _emailController,
                  type: 'Username',
                  uppterType: 'Username',
                  errorText: "Enter your Name",
                  suffixIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  hidetext: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _nameController,
                  type: 'Email Address',
                  uppterType: 'Email',
                  errorText: "Enter your email",
                  hidetext: false,
                  suffixIcon: const Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                CutsomTextField(
                  controller: _passwordController,
                  type: 'Phone Number',
                  uppterType: 'Password',
                  errorText: "Enter your password",
                  hidetext: true,
                  suffixIcon: const Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                LoginInButton(
                    heightt: 60,
                    widthh: 310,
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
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 70.w,
                      endIndent: 70.w,
                    ),
                    const Text('or'),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 70.w,
                      endIndent: 70.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                DiffLoginButton(
                  text: 'Continue with Google',
                  ontap: () {},
                  heightt: 60,
                  widthh: 310,
                  image: 'assets/icons/google.png',
                ),
                SizedBox(
                  height: 10.h,
                ),
                DiffLoginButton(
                  text: 'Continue with Facebook',
                  ontap: () {},
                  heightt: 60,
                  widthh: 310,
                  image: 'assets/icons/facebook.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
