import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  /* --------------------------- Oyunun elementleri --------------------------- */
  List<String> elements = ['rock', 'scissor', 'paper'];
  String botElement;
  String? input;
  String? userElement;
  print('****** Welcome to the Rock-Scissor-Paper game ******');
  do {
    /* ---------------------------- starting the game --------------------------- */
    do {
      stdout.write('To start the game press {x}, to exit press {e}: ');
      input = stdin.readLineSync();
      input = input.toString().trim().toLowerCase();
      print('Invalid input, try again!');
    } while (input != 'x' && input != 'e');

    if (input == 'e') {
      break;
    }
    /* -------------------------------------------------------------------------- */

    /* ------------------------------ Oyun prosesi ------------------------------ */
    int random = Random().nextInt(3);
    botElement = elements[random];

    print('1. Rock\n' + '2. Scissor\n' + '3. Paper');
    stdout.write('Make your choice: ');
    userElement = stdin.readLineSync();
    switch (userElement) {
      case '1':
        if (botElement == 'scissor') {
          displayResult('Rock', botElement, 'You won');
        } else if (botElement == 'paper') {
          displayResult('Rock', botElement, 'You lost');
        } else {
          displayResult('Rock', botElement, 'Equal');
        }
        break;

      case '2':
        if (botElement == 'rock') {
          displayResult('Scissor', botElement, 'You lost');
        } else if (botElement == 'paper') {
          displayResult('Scissor', botElement, 'You won');
        } else {
          displayResult('Scissor', botElement, 'Equal');
        }
        break;

      case '3':
        if (botElement == 'rock') {
          displayResult('Paper', botElement, 'You won');
        } else if (botElement == 'scissor') {
          displayResult('Paper', botElement, 'You lost');
        } else {
          displayResult('Scissor', botElement, 'Equal');
        }
        break;
      default:
        print('######\n' + 'Invalid choice, try again!\n' + '######');
        continue;
    }
    /* -------------------------------------------------------------------------- */
  } while (input == 'x');
  if (input == 'e') {
    print('Exited');
  }
}

void displayResult(String user, String bot, String result) {
  print('Your choice: $user | Bot choice: $bot\n' +
      '******\n' +
      'You $result!\n' +
      '******');
}
