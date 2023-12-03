import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:store/Core/Utils/Consts.dart';
import 'package:store/Core/Widgets/button.dart';
import 'package:store/Core/Widgets/textfield.dart';
import 'package:store/Features/Auth/Presentation/Widgets/RegisterView.dart';
import 'package:store/Features/Home/Presentation/View/HomeView.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String? Email;

  String? Password;

  bool isloading = false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
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
                      'LOGIN',
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
                            await auth.signInWithEmailAndPassword(
                                email: Email!, password: Password!);
                        ShowSnackbar(context, 'success');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          ShowSnackbar(
                              context, 'No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          ShowSnackbar(context,
                              'Wrong password provided for that user.');
                        }
                      }
                    }
                    isloading = false;
                    setState(() {});
                  },
                  tex: 'LOGIN',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account',
                      style: TextStyle(
                        color: Color(0xffc7ede6),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterView()),
                        );
                      },
                      child: Text(
                        '   Register',
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
    );
  }

  void ShowSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
