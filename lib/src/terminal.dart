import 'dart:io';
import 'option.dart';

class Terminal {
  const Terminal();
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  String collectInput() {
    return stdin.readLineSync();
  }

  void printOption(List<Option> options) {
    options.asMap().forEach((key, value) {
      stdout.writeln('[$key] - ${value.label}');
    });
    stdout.writeln('Enter a choice \n');
    stdout.writeln('>');
  }

  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }
}
