import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants.dart';

import 'custom_textfield.dart';
import 'diff_login_button.dart';
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
  late final TabController _tabController =
      TabController(length: 2, vsync: this);
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

  bool _showPassword = false;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Login as User',
                  style: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black,
                  controller: _tabController,
                  labelColor: Colors.black,
                  labelStyle: MyFonts.getPoppin(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: 'Email',
                    ),
                    Tab(
                      text: 'Phone Number',
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          CutsomTextField(
                            controller: _emailController,
                            type: 'Email',
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
                                  _showPassword = !_showPassword;
                                });
                              },
                              icon: Icon(
                                _showPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.black,
                              ),
                            ),
                            uppterType: 'Password',
                            errorText: 'Enter your password',
                            hidetext: !_showPassword,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Consumer<errorProvider>(
                            builder:
                                (BuildContext context, value, Widget? child) {
                              return Column(
                                  children: List.generate(
                                Provider.of<errorProvider>(context,
                                        listen: false)
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
                            widthh: 346,
                            heightt: 59,
                            text: 'Log in',
                            color: Colors.purple,
                            ontap: () async {
                              if (_formKey.currentState!.validate()) {
                                await _auth.signIn(
                                    email: _emailController.text.toString(),
                                    password:
                                        _passwordController.text.toString(),
                                    ctx: context);
                              }
                            },
                          ),
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
                              Text(
                                'or',
                                style: MyFonts.getPoppin(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
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
                            ontap: () async {
                              await _auth.signInWithGoogle(context);
                            },
                            widthh: 355,
                            heightt: 55,
                            image: 'assets/icons/google.png',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          DiffLoginButton(
                            text: 'Continue with Facebook',
                            ontap: () {},
                            widthh: 355,
                            heightt: 55,
                            image: 'assets/icons/facebook.png',
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Forgot Password?',
                                style: MyFonts.getPoppin(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'Reset',
                                style: MyFonts.getPoppin(
                                  color: Colors.purple,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
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
