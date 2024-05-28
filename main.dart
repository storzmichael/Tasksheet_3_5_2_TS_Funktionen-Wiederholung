import 'function.dart';

void main() {
  List<String> names = ['Michael', 'Jan', 'Simon', 'Ibrahim'];
  Map<String, int> result = numberOfletters(names);

    result.forEach((name, count) {
    print('"$name" -> $count');
  });

  print(multiMoreNumbers(5, 5, 5));


  print(aroundSign(-5));




}
