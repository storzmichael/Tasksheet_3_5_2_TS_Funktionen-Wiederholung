import 'function.dart';


void main() {
  List<String> names = ['Michael', 'Jan', 'Simon', 'Ibrahim'];
  Map<String, int> result = numberOfletters(names);

    result.forEach((name, count) {
    print('"$name" -> $count');
  });

  print(multiMoreNumbers(5, 5, 5));


  print(aroundSign(-5));

  print(smallNumber(4, 3));

  print(convertTemperature(29, 'C'));

  print(convertTemperature(84, 'F'));

  concatenation(names);

  print('');

  print(isPrime(7));

  print(reverseNumber(789));

  print(secondsFormatter(3661));

  print(areAnagrams('ort', 'rot'));

  squarePattern(4, 4);

  print(divideIntoWords('Hallo meine Name ist Michael'));

  print(countCharacters('Hallo mein Name ist Michael!'));
  
  print(checkBrackets("((())()"));
  }





