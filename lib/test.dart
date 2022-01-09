//ignore_for_file: avoid_print

import 'dart:io';

import 'dart:math';

void main() {
  var resultNumberRandom = Random();
  var answerMain = resultNumberRandom.nextInt(100);
  int count = 0;
  String pattern = r'(^[0-9]*$)';
  RegExp re = RegExp(pattern);

  do {
    stdout.write('Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var checkInput = re.hasMatch(input!);

    if (checkInput) {

      var numberInput = int.parse(input);
      if (answerMain == numberInput) {
        count++;

        print('$answerMain is CORRECT ❤');
        print('TOTAL ROUNDS == >> $count');

        break;
      }
      numberInput > answerMain
          ? print('$numberInput is TOO HIGH! ▲')
          : print('$numberInput is TOO LOW! ▼');
      count++;
      continue;
    }

  } while (true);
}
