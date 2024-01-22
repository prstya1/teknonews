import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app_ui/SignIn/components/my_button.dart';
import 'package:flutter_news_app_ui/SignIn/components/my_textfield.dart';
import 'package:flutter_news_app_ui/SignIn/components/square_tile.dart';


class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});
  
static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign user up method
  void signUserUp() async {
    showDialog(
    context: context,
    builder: (context) {
    return const Center(
    child: CircularProgressIndicator(), 
    ); // Center
    },
    );

    try {
      if (passwordController.text == confirmPasswordController.text){
         await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
      );
      }
      else {
        showErrorMessage('password tidak sama!');
      }
      
   
      Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    Navigator.pop(context);
    showErrorMessage(e.code);
  }
}

  void showErrorMessage(String Message) {
    showDialog(
      context: context,
      builder: (context) {
       return AlertDialog(
        backgroundColor: Colors.blueAccent,
          title: Center(
            child : Text(
              'Incorrect Email',
              style: const TextStyle(color: Colors.white),
              )  
            
            ),
        );
      },
      );
  }

  
  
// show loading circle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),

              // logo
              const Icon(
                Icons.lock,
                size: 50,
              ),

              const SizedBox(height: 25),

              // welcome back, you've been missed!
              Text(
                'let\'s create an account',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: emailController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),
              MyTextField(
                controller: confirmPasswordController,
                hintText: ' Confirm Password',
                obscureText: true,
              ),


             

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                text: 'Sign Up',
                onTap: signUserUp,
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'lib/SignIn/images/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'lib/SignIn/images/apple.png')
                ],
              ),

              const SizedBox(height: 20),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Login now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

