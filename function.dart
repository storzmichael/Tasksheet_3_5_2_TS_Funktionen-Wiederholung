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

// Vorzeichen umdrehen
int aroundSign (int number){
  return (number - (number*2));
}

//Finde die kleinste Zahl
int smallNumber(int firstNumber, int secondNumber) {
  return (firstNumber > secondNumber) ? secondNumber : firstNumber;
}