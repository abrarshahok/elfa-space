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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.81.h,
      child: Padding(
        padding: EdgeInsets.all(26.h),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: kgradientColors,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    width: 50.w,
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      // color: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text('Login as User',
                    style: headingTheme.copyWith(fontSize: 22.sp)),
                SizedBox(
                  height: 10.h,
                ),
                TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.transparent,
                    controller: _tabController,
                    labelColor: Colors.black,
                    labelStyle: tabviewTheme,
                    unselectedLabelColor: Colors.grey.withOpacity(0.5),
                    tabs: const [
                      Tab(
                        text: 'Email',
                      ),
                      Tab(
                        text: 'Phone Number',
                      ),
                    ]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6.h,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            CutsomTextField(
                              controller: _emailController,
                              type: 'Email',
                              icon: Icons.person,
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
                              icon: Icons.visibility,
                              uppterType: 'Password',
                              errorText: 'Enter your password',
                              hidetext: true,
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
                                              color: Colors.red),
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
                                heightt: 60,
                                widthh: 310,
                                text: 'Log in',
                                color: kPrimaryColor,
                                ontap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    await _auth.signIn(
                                        email: _emailController.text.toString(),
                                        password:
                                            _passwordController.text.toString(),
                                        ctx: context);
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
                              ontap: () async {
                                await _auth.signInWithGoogle(context);
                              },
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
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text('Forgot Password?',
                                    style: TextStyle(
                                        fontFamily: 'Monsterrat-Medium',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: const Color(0xff000000)
                                            .withOpacity(0.7))),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text('Reset',
                                    style: TextStyle(
                                        fontFamily: 'Monsterrat-Medium',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: Colors.blue))
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox()
                    ],
                  ),
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
