import 'package:fitness_tracker/pages/track.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class AIPlannerPage extends StatelessWidget {
  const AIPlannerPage({super.key});

  static const List<String> genders = <String>['Male', 'Female', 'Delusional'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PlayAnimationBuilder(
        tween: Tween(begin: 0.01, end: 1),
        duration: Duration(milliseconds: 500),
        fps: 60,
        curve: Curves.fastLinearToSlowEaseIn,
        builder: (context, value, child) => 
          Opacity(
            opacity: value.toDouble(),
            child: Container(
              color: Colors.black,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                children: const [ 
                  TopBarC(title: 'AI Planner',),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Personal Information',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  CustomInputField(title: 'Age', widget: CustomInputFieldChildTextInput()),
                  // CustomInputField(title: 'Gender', widget: CustomDropdownInput(itemList: genders)),
                  CustomInputField(title: 'Gender', widget: CustomInputFieldChildTextInput()),
                  CustomInputField(title: 'Height', widget: CustomInputFieldChildTextInput()),
                  CustomInputField(title: 'Weight', widget: CustomInputFieldChildTextInput()),
                  CustomInputField(title: 'Fitness Goals', widget: CustomInputFieldChildTextInput()),
                  CustomInputField(title: 'Medical History', widget: CustomInputFieldChildTextInput()),
                  CustomInputField(title: 'Workout Preferences', widget: CustomInputFieldChildTextInput()),
                  CustomInputField(title: 'Allergies', widget: CustomInputFieldChildTextInput()),
                  
                  SizedBox(height: 100,)
                ],
              ),
            ),
          ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String title;
  final Widget widget;
  const CustomInputField({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        width: double.infinity,
        decoration: const BoxDecoration(
        color: Color.fromARGB(255, 22, 22, 22),
        borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12
              ),
            ),
            widget
          ],
        ),
      )
    );
  }
}

class CustomInputFieldChildTextInput extends StatelessWidget {
  const CustomInputFieldChildTextInput ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 35,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CustomDropdownInput extends StatelessWidget {
  final List<String> itemList;
  const CustomDropdownInput({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: DropdownButton(
        dropdownColor: Color.fromARGB(255, 22, 22, 22),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        style: const TextStyle(
          color: Colors.white
        ),
        underline: const SizedBox(),
        onChanged: (e){},
        items: itemList.map((value) => DropdownMenuItem(value: value,child: Text(value),)).toList()
      ),
    );
  }
}