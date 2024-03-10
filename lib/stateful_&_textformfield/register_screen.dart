import 'package:flutter/material.dart';
import 'package:gdsc/reusable/components.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Register',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              DefaultTextFormField(
                hintText: 'enter your name',
                labelText: 'name',
                inputType: TextInputType.name,
                icon: Icons.person,
              ),
              // TextFormField(
              //   //maxLength: 8,
              //   validator: (value){
              //     if(value!.isEmpty){
              //       return 'can not be empty';
              //     }
              //     // valid
              //     return null;
              //   },
              //   keyboardType: TextInputType.name,
              //   decoration: InputDecoration(
              //     prefixIcon: const Icon(Icons.person),
              //     hintText: 'Enter your name',
              //     labelText: 'Name',
              //     //filled: true,
              //     //fillColor: Colors.yellowAccent,
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //       borderSide: const BorderSide(
              //         width: 1,
              //         color: Colors.teal,
              //       ),
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //   ),
              // ),

              const SizedBox(height: 20),
              DefaultTextFormField(
                hintText: 'enter your phone',
                labelText: 'phone',
                inputType: TextInputType.phone,
                icon: Icons.phone,
              ),
              // TextFormField(
              //   validator: (value){
              //     if(value!.isEmpty){
              //       return 'can not be empty';
              //     }
              //     // valid
              //     return null;
              //   },
              //   keyboardType: TextInputType.phone,
              //   maxLength: 11,
              //   decoration: InputDecoration(
              //     prefixIcon: const Icon(Icons.phone),
              //     hintText: 'Enter your phone',
              //     labelText: 'phone',
              //     //filled: true,
              //     //fillColor: Colors.yellowAccent,
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //       borderSide: const BorderSide(
              //         width: 1,
              //         color: Colors.teal,
              //       ),
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              DefaultTextFormField(
                hintText: 'enter your mail',
                labelText: 'mail',
                inputType: TextInputType.emailAddress,
                icon: Icons.mail,
              ),
              // TextFormField(
              //   validator: (value){
              //     if(value!.isEmpty){
              //       return 'can not be empty';
              //     }
              //     if(value.length < 2){
              //       return 'can not be < 2';
              //     }
              //     // valid
              //     return null;
              //   },
              //   //cursorColor: Colors.red,
              //   //keyboardType: TextInputType.phone,
              //   decoration: InputDecoration(
              //     prefixIcon: const Icon(Icons.mail),
              //     hintText: 'Enter your mail',
              //     //hintStyle: TextStyle(),
              //     labelText: 'E-mail',
              //     //labelStyle: TextStyle(),
              //     //filled: true,
              //     //fillColor: Colors.yellowAccent,
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //       borderSide: const BorderSide(
              //         width: 1,
              //         color: Colors.teal,
              //       ),
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(5),
              //     ),
              //   ),
              // ),
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
                    Navigator.pop(context);
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
