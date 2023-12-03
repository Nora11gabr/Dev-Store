import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/Core/Utils/Consts.dart';
import 'package:store/Core/Widgets/button.dart';
import 'package:store/Core/Widgets/textfield.dart';

class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String? Email;

  String? Password;

  bool isloading = false;

  GlobalKey<FormState> formkey = GlobalKey();
  //validation
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        backgroundColor: KPrimaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: ListView(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      AppName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'REGISTER',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customtextfeild(
                      onChanged: (data) {
                        Email = data;
                      },
                      hinttext: 'Email'),
                  SizedBox(
                    height: 10,
                  ),
                  customtextfeild(
                      secure: true,
                      onChanged: (data) {
                        Password = data;
                      },
                      hinttext: 'Password'),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    ontap: () async {
                      if (formkey.currentState!.validate()) {
                        isloading = true;
                        setState(() {});
                        try {
                          var auth = FirebaseAuth.instance;
                          UserCredential user =
                              await auth.createUserWithEmailAndPassword(
                                  email: Email!, password: Password!);
                          ShowSnackbar(context, 'success');
                          Navigator.pop(context);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            ShowSnackbar(
                                context, 'The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            ShowSnackbar(context,
                                'The account already exists for that email.');
                          }
                        }
                      }
                      isloading = false;
                      setState(() {});
                    },
                    tex: 'RGISTER',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You have an account',
                        style: TextStyle(
                          color: Color(0xffc7ede6),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          '   Login',
                          style: TextStyle(color: Color(0xffc7ede6)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void ShowSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
