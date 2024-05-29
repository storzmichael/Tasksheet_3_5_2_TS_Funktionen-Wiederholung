import 'dart:io';

//  Hello World
void helloWorld() {
  print('Hello World!');
}

//  Hello $Name
void greet([String name = 'World']) {
  // mit optionalem Parameter[]
  print('Hello $name!');
}

//  Summe von zwei Zahlen
int addNumbers(int firstNumber, int secondNumber) {
  return firstNumber + secondNumber;
}

//  Finde die größere Zahl
int largerNumber(int firstNumber, int secondNumber) {
  return (firstNumber > secondNumber) ? firstNumber : secondNumber;
}

//  Gerade Zahl
bool evenNumber(int firstNumber) {
  return (firstNumber % 2 == 0);
}

//  Summe
int addList(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

// Durchschnitt
num averageList(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  num summe = addList(numbers);
  return summe / numbers.length;
}

//  Zeichen
String checkNumber(int number) {
  if (number < 0) {
    return 'Die Zahl $number ist Negativ!';
  } else if (number == 0) {
    return '0!';
  } else {
    return 'Die Zahl $number ist Positiv!';
  }
}

//  Aufteilung
List<String> divideLetters(String input) {
  List<String> letterList = [];

  for (int i = 0; i < input.length; i++) {
    letterList.add(input[i]);
  }
  return letterList;
}

//  Buchstabenzahl
Map<String, int> numberOfletters(List<String> names) {
  Map<String, int> namesAndCount = {};
  for (String name in names) {
    namesAndCount[name] = name.length;
  }
  return namesAndCount;
}

//  Multiplikation zwei Zahlen
int multiNumbers(int firstNumber, int secondNumber) {
  return firstNumber * secondNumber;
}

//  Multiplikation mehrerer Zahlen
int multiMoreNumbers(int firstNumber, int secondNumber, int thirdNumber) {
  return multiNumbers(firstNumber, secondNumber) * thirdNumber;
}

//  Vorzeichen umdrehen
int aroundSign(int number) {
  return (number - (number * 2));
}

//  Finde die kleinste Zahl
int smallNumber(int firstNumber, int secondNumber) {
  return (firstNumber > secondNumber) ? secondNumber : firstNumber;
}

//  Umrechnen von Temperatur
String convertTemperature(num temperature, String unit) {
  if (unit == 'C') {
    num resultInF = (temperature * 1.8 + 32);
    String resultInFStr = resultInF.toStringAsFixed(1);
    return ('Die Temperatur $temperature C° sind $resultInFStr F.');
  } else {
    num resultInC = ((temperature - 32) / 1.8);
    String resultInCStr = resultInC.toStringAsFixed(1);
    return ('Die Temperatur $temperature F sind $resultInCStr C°.');
  }
}

//  Zeichenketten-Verkettung
void concatenation(List<String> letterList) {
  for (String letter in letterList) {
    stdout.write(letter);
  }
}

//----------------------------------------------------------------------------
//  Prime Checker
bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  for (int i = 3; i <= number ~/ 2; i += 2) {
    if (number % i == 0) return false;
  }

  return true;
}

//  Reverse Number
int reverseNumber(int number) {
  int reversed = 0;

  while (number > 0) {
    int digit = number % 10; // Extrahiere die letzte Ziffer
    reversed = reversed * 10 + digit; // Füge die Ziffer zur umgekehrten Zahl hinzu
    number ~/= 10; // Entferne die letzte Ziffer von der Originalzahl
  }

  return reversed;
}

// Seconds Formatter
String secondsFormatter(int inputSeconds) {
  int seconds = inputSeconds % 60;
  int totalMinutes = inputSeconds ~/ 60;
  int minutes = totalMinutes % 60;
  int hours = totalMinutes ~/ 60;
  return ('$hours Stunden $minutes Minuten $seconds Sekunden');
}

//  Anagram
bool areAnagrams(String word1, String word2) {
  if (word1.length != word2.length) {
    return false;
  }
  List<String> sortedWord1 = word1.split('')..sort();
  List<String> sortedWord2 = word2.split('')..sort();

  return sortedWord1.join() == sortedWord2.join();
}

//  Multiplication Advanced
int multiplyAdvanced(int a, int b) {
  int result = 0;

  bool isNegative = (a < 0 && b >= 0) || (a >= 0 && b < 0);
  a = a.abs();
  b = b.abs();

  for (int i = 0; i < b; i++) {
    result += a;
  }

  return isNegative ? -result : result;
}

//  Text in Wörter einteilen
List<String> divideIntoWords(String text) {
  List<String> words = [];
  String word = '';

  for (int i = 0; i < text.length; i++) {
    if (text[i] == ' ') {
      if (word.isNotEmpty) {
        words.add(word);
        word = '';
      }
    } else {
      word += text[i];
    }
  }

  if (word.isNotEmpty) {
    words.add(word);
  }

  return words;
}

//  Textanalyse
Map<String, int> countCharacters(String text) {
  int space = 0;
  int vowel = 0;
  int other = 0;

  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  for (int i = 0; i < text.length; i++) {
    String character = text[i].toLowerCase();
    if (character == ' ') {
      space++;
    } else if (vowels.contains(character)) {
      vowel++;
    } else {
      other++;
    }
  }
  Map<String, int> result = {'Leerzeichen': space, 'Vokale': vowel, 'Andere Zeichen': other};
  return result;
}

//  FizzBuzz
void fizzBuzz(int input) {
  for (int i = 1; i <= input; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('$i = FizzBuzz');
    } else if (i % 5 == 0) {
      print('$i = Buzz');
    } else if (i % 3 == 0) {
      print('$i = Fizz');
    } else {
      print(i);
    }
  }
}

//  Quadratmuster
void squarePattern(int row, int columns) {
  String value = ' #';

  for (int i = 0; i < row; i++) {
    for (int j = 0; j < columns; j++) {
      stdout.write('$value');
    }
    print('');
  }
}

//  Palindrom
bool istPalindrom(String text) {
  text = text.toLowerCase();

  int vorne = 0;
  int hinten = text.length - 1;

  while (vorne < hinten) {
    if (text[vorne] != text[hinten]) {
      return false;
    }
    vorne++;
    hinten--;
  }
  return true;
}

//  Klammerproblem
bool checkBrackets(String text) {
  List<String> bracket = [];

  for (int i = 0; i < text.length; i++) {
    String character = text[i];

    if (character == '(') {
      bracket.add(character);
    } else if (character == ')') {
      if (bracket.isEmpty || bracket.last != '(') {
        return false;
      }
      bracket.removeLast();
    }
  }
  return bracket.isEmpty;
}
