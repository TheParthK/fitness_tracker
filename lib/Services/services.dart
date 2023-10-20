import 'package:flutter/material.dart';

class ThemeColors{
  final bool darkMode;
  ThemeColors({
    required this.darkMode
  });

  late bool isDarkMode = darkMode;
  late Color backgroundColor = darkMode ?Colors.black : Colors.white;
  late Color mainTextColor = darkMode ?Colors.white : Colors.black;
  late Color topAppBarColor = darkMode ?Colors.black45 : Colors.transparent;
  late Color iconColor = darkMode ? Colors.white : Colors.black;
  late Color defaultButtonColor = darkMode ? const Color.fromARGB(255, 40, 40, 40) : const Color.fromARGB(255, 225, 225, 225);
  late Color pressedButtonColor = darkMode ? const Color.fromARGB(255, 60, 60, 60) : const Color.fromARGB(255, 245, 245, 245);
  late Color subTextColor = darkMode ? Colors.grey : const Color.fromARGB(255, 90, 90, 90);
  late IconData colorModeIcon = darkMode ? Icons.light_mode : Icons.dark_mode;
}