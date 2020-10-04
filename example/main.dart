import 'package:prompter_sg/src/prompter_sg.dart';

void main(List<String> args) {
  var options = [
    new Option('I want red', '#f00'),
    new Option('I want blue', '#00f')
  ];
  final prompter = new Prompter();
  final usersPick = prompter.askMultiple("What color do you like ?", options);
  final answer = prompter.askBinary('Do you like dart?');
  print(usersPick);
  print(answer);
}
