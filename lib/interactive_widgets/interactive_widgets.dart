/*
Buttons : TextButton - OutlinedButton - ElevatedButton - IconButton - FAB
Buttons with special constructor like (ElevatedButton.icon)
TextField
Navigation
 */

import 'package:flutter/material.dart';
import 'package:gdsc/basic_widgets/business_card.dart';

class InteractiveWidgets extends StatelessWidget {
  InteractiveWidgets({super.key});

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /// Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      print('search');
                    },
                    icon: const Icon(Icons.search),
                  ),
                  TextButton(
                    onPressed: () {
                      print('TextButton');
                    },
                    child: const Text('add'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print('OutlinedButton');
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: const Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('add'),
                    /*
                    ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                    )
                     */
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text(
                      'add',
                      style: TextStyle(color: Colors.yellow),
                    ),
                    icon: const Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                    ),
                    /*
                    ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                    )
                     */
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: false,
                    child: const Text('add'),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              /// TextField
              TextField(
                controller: emailController,
                //cursorColor: Colors.red,
                //keyboardType: TextInputType.phone,
                onChanged: (value) {
                  print(emailController.text);
                },
                onSubmitted: (val) {
                  print(emailController.text);
                },
                decoration: InputDecoration(
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
              const SizedBox(height: 40),
              /// Navigation
              Center(
                child: TextButton(
                  onPressed: () {
                    /// push
                    /*
                    Navigator.push(context, MaterialPageRoute(builder: (v) {
                      return myScreen(context);
                    }));
                     */
                    /// pushReplacement
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (v)=>BusinessCard()));

                    //print(emailController.text);
                    //emailController.clear();
                    if(true){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){return BusinessCard();}));
                      print('object');
                    }
                  },
                  child: const Text('login'),
                ),
              ),
            ],
          ),
        ),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // do any thing
        },
        mini: false, // Controls the size of this button
        tooltip: 'add new item', // hint text
        child: const Text('add'),
      ),
    );
  }

  Widget myScreen(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
