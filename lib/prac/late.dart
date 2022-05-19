class Person {
  // late int age = calculation();
  int age = calculation();
  void printAge() {
    print('age');
  }
}

int calculation() {
  print('calculate');
  return 30;
}

void main() {
  Person p = Person();
  p.printAge();
  print(p.age);
}

//late를 사용하지 않았을 때
//calculate => age => 30
//late를 사용했을 때
// age => calculate => 30
