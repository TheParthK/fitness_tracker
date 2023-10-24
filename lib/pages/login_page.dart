import 'dart:ui';

import 'package:fitness_tracker/pages/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1694390786624-f9afc128c669?auto=format&fit=crop&q=80&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
              ),
              fit: BoxFit.cover
            )
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [BoxShadow(color: Colors.black.withAlpha(20), blurRadius: 10)]
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(13),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 25, 25, 25),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Image.asset('assets/logo_w.png'),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Sign in to your account',
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration:  BoxDecoration(
                      // color: const Color.fromARGB(255, 235, 235, 235),
                      color: Colors.white,
                      borderRadius: const  BorderRadius.all(Radius.circular(12)),
                      border: Border.all(width: 0.8, color: Color.fromARGB(255, 200, 200, 200)),
                      boxShadow: [BoxShadow(color: Colors.black.withAlpha(15), blurRadius: 10)]
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CustomInputField(hintText: 'Email Address',),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          height: 0.8,
                          color: Color.fromARGB(255, 200, 200, 200),
                        ),
                        const CustomInputField(hintText: 'Password',),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'New Here?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 100, 100, 100),
                      fontSize: 12
                    ),
                  ),
                  const SizedBox(height: 5,),
                  CustomButton(text: 'Sign Up Instead', function: (){},),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 10,),
                      Expanded(child: Container(height: 0.8, color: const Color.fromARGB(255, 200, 200, 200))),
                      const Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'or',
                          style: TextStyle(
                            color: Color.fromARGB(255, 100, 100, 100),
                            fontSize: 12
                          ),
                        ),
                      ),
                      Expanded(child: Container(height: 0.8, color: const Color.fromARGB(255, 200, 200, 200))),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  CustomButton(text: 'Continue', function: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),)),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String hintText;
  const CustomInputField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 200, 200, 200), fontSize: 15),
        ),
        cursorColor: Colors.black,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback function;
  const CustomButton({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    // String text = text.toLowerCase() == 'continue' ? 'Continue' : 'Sign up instead';
    Color textColor = text.toLowerCase() == 'continue' ? Colors.white : Colors.black;
    Color bgColor = text.toLowerCase() == 'continue' ? Colors.black : const Color.fromARGB(255, 240, 240, 240);
    Color borderColor = text.toLowerCase() == 'continue' ? Colors.black : Colors.grey.withAlpha(10);
    Color splashColor = text.toLowerCase() == 'continue' ? Colors.white : Colors.black;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        splashColor: splashColor,
        onTap: function,
        child: Ink(
          height: 60,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            border: Border.all(width: 1, color: borderColor)
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor, 
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}