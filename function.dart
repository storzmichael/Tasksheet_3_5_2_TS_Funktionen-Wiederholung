//  Hello World
import 'dart:io';
import 'dart:math';

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
num averageListe(List<int> numbers) {
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
Map<String, int> numberOfletters(List<String> names){
  Map<String, int> namesAndCount ={};
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
int multiMoreNumbers(int firstNumber,int secondNumber,int thirdNumber) {
  return multiNumbers(firstNumber,secondNumber) * thirdNumber;
}

//  Vorzeichen umdrehen
int aroundSign (int number){
  return (number - (number*2));
}

//  Finde die kleinste Zahl
int smallNumber(int firstNumber, int secondNumber) {
  return (firstNumber > secondNumber) ? secondNumber : firstNumber;
}

//  Umrechnen von Temperatur
String convertTemperature(num temperature, String unit){
  if (unit == 'C'){
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
void concatenation(List<String> letterList){
  for (String letter in letterList){
    stdout.write(letter); 
  }
}

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
    int digit = number % 10;  // Extrahiere die letzte Ziffer
    reversed = reversed * 10 + digit;  // Füge die Ziffer zur umgekehrten Zahl hinzu
    number ~/= 10;  // Entferne die letzte Ziffer von der Originalzahl
  }
  
  return reversed;
}

// Seconds Formatter
String secondsFormatter(int inputSeconds){
  int seconds = inputSeconds % 60;
  int totalMinutes = inputSeconds ~/ 60;
  int minutes = totalMinutes % 60; 
  int hours = totalMinutes ~/ 60;
  return ('$hours Stunden $minutes Minuten $seconds Sekunden');
}

//  Anagram
bool areAnagrams (String word1, String word2){
  if (word1.length != word2.length){
    return false;
}
  List<String> sortedWord1 = word1.split('')..sort();
  List<String> sortedWord2 = word2.split('')..sort();

  return sortedWord1.join() == sortedWord2.join();
}

//  Multiplication Advanced
