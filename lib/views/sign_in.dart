import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/theme.dart';
import 'package:todo/utils/validator.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(gradient: AppTheme.primaryGradient),
          child: Center(
            child: Container(
              height: 400,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Sign In",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: const Color(0xFF2B125A)),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.black45,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            // TODO: Uncomment this code to validate email
                            if (Validator().isValidEmail(value) == false) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          onSaved: (newValue) {},
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.black45,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            // TODO: Uncomment this code to validate password
                            // if(Validator().isValidPassword(value) == false)
                            // {
                            //   return 'Password must be at least 8 characters, contain at least one uppercase letter, one lowercase letter and one number';
                            // }
                            return null;
                          },
                          onSaved: (newValue) {},
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 56,
                          width: 298,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(254),
                            color: AppTheme.primaryColor,
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text('SIGN IN',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: Colors.white))),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Expanded(
                              child: Divider(),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "OR",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Don't have account? Sign up now",
                            style: AppTheme.bodyFontStyle.copyWith(
                                fontSize: 16, color: AppTheme.primaryColor),
                          ),
                        )
                      ]),
                ),
              ),
            ),
          ),
        ));
  }
}
