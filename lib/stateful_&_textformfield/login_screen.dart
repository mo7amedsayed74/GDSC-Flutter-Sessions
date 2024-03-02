import 'package:flutter/material.dart';
import 'package:gdsc/stateful_&_textformfield/counter_screen.dart';
import 'package:gdsc/stateful_&_textformfield/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'can not be empty';
                  }
                  if (value.length < 2) {
                    return 'can not be < 2';
                  }
                  // valid
                  return null;
                },
                //cursorColor: Colors.red,
                //keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail),
                  hintText: 'Enter your mail',
                  //hintStyle: TextStyle(),
                  labelText: 'E-mail',
                  //labelStyle: TextStyle(),
                  //filled: true,
                  //fillColor: Colors.yellowAccent,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.teal,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'can not be empty';
                  }
                  if (value.length < 2) {
                    return 'can not be < 2';
                  }
                  return null;
                },
                //obscureText: true,
                //cursorColor: Colors.red,
                //keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  hintText: 'Enter your password',
                  //hintStyle: TextStyle(),
                  labelText: 'Password',
                  //labelStyle: TextStyle(),
                  //filled: true,
                  //fillColor: Colors.yellowAccent,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.teal,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (con) => const CounterScreen(),
                      ),
                    );
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "if you do not have an account ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => RegisterScreen()));
                    },
                    child: const Text('register now'),
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
