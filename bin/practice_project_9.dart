import 'dart:io';
import 'dart:math';

void main() {
  print('Welcome! Please type Exit to end');
  mainGame();
}

mainGame() {
  final random = Random();
  int randomNumber = random.nextInt(100);
  int attemp = 0;

  while (true) {
    attemp += 1;
    stdout.write('Please choose your number\n');
    String userInput = stdin.readLineSync()!.toLowerCase();

    if (userInput == 'exit') {
      print('Bye!');
      break;
    } else if (int.parse(userInput) > 100) {
      print('Please choose btween 100');
      continue;
    }

    if (int.parse(userInput) == randomNumber) {
      print('Bingo! you did $attemp attemp');
      continue;
    } else if (int.parse(userInput) > randomNumber) {
      print('You are higher!\n');
      continue;
    } else {
      print('You are lower!');
      continue;
    }
  }
}
