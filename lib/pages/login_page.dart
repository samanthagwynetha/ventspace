import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ventspace/components/my_button.dart';
import 'package:ventspace/components/my_textfield.dart';
import 'package:ventspace/helper/helper_functions.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap; 
  
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() async{
    // show loading circle
    showDialog(
      context: context, 
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  
  //try sign in
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
    );

    //pop loading circle
    if (context.mounted) Navigator.pop(context);
  }

  //display any errors
  on FirebaseAuthException catch(e) {
    //pop loading circle 
    Navigator.pop(context);
    displayMessageToUser(String, e.code, context);
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //logo
            Icon(
              Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            
            const SizedBox(height: 25),
          
            //app name
            const Text(
              "V E N T S P A C E",
              style: TextStyle(fontSize: 20),
            ),
          
            const SizedBox(height: 50),
          
            //email textfield
            MyTextfield(
              hintText: "Email", 
              obscureText: false, 
              controller: emailController,
            ),
          
            const SizedBox(height: 10),
    
            //password textfield
            MyTextfield(
              hintText: "Password", 
              obscureText: true, 
              controller: passwordController,
            ),

            const SizedBox(height: 10),

            //forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?", 
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ],
            ),

            const SizedBox(height: 25),

            //sign in button
            MyButton(
              text: "Login", 
              onTap: login,
            ),

            const SizedBox(height: 25),

            //don't have an account? register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),        
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    " Register Here",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}