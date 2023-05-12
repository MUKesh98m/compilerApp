import 'package:compiler/utils/validation.dart';
import 'package:flutter/material.dart';

import '../components/authentication_button.dart';
import '../components/custom_text_field.dart';
import '../constants.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  static String id = 'SignupScreen';
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.9,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 20.0,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: kDarkGreenColor,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Register',
                          style: GoogleFonts.poppins(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w600,
                            color: kDarkGreenColor,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'Create a new account',
                          style: GoogleFonts.poppins(
                            color: kGreyColor,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        CustomTextField(
                          hintText: 'Full Name',
                          icon: Icons.person,
                          keyboardType: TextInputType.name,
                          onChanged: (value) {},
                          controller: nameController,
                          validator: nameValidation,
                        ),
                        CustomTextField(
                          hintText: 'Email',
                          icon: Icons.mail,
                          keyboardType: TextInputType.name,
                          onChanged: (value) {},
                          controller: emailController,
                          validator: validateEmail,
                        ),
                        CustomTextField(
                          hintText: 'Password',
                          icon: Icons.lock,
                          keyboardType: TextInputType.name,
                          onChanged: (value) {},
                          controller: passController,
                          validator: validatePassword,
                        ),
                        CustomTextField(
                          hintText: 'Confirm Password',
                          icon: Icons.lock,
                          keyboardType: TextInputType.name,
                          onChanged: (value) {},
                          controller: confPassController,
                          validator: validatePassword,
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'By signing you agree to our ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: kDarkGreenColor,
                              ),
                            ),
                            Text(
                              ' Terms of use',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: kGreyColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'and ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: kDarkGreenColor,
                              ),
                            ),
                            Text(
                              ' privacy notice',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: kGreyColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: AuthenticationButton(
                        label: 'Sign Up',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            emailController.dispose();
                            passController.dispose();
                            context.showToastySnackbar(
                                "Login Succesfully",
                                "User Login Is Succesfully Complited",
                                AlertType.success);
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
