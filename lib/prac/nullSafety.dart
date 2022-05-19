import 'package:practice/prac/nullSafety.dart';

class Person {
  String? name;

  String nameChange(String? name) {
    this.name = name;
    if (name == null) {
      return 'need a name';
    } else {
      return name.toUpperCase();
    }
  }
}

void main() {
  Person p = Person();
  if (p.name == null) {
    print('need a name');
  } else {
    print(p.nameChange(p.name));
  }
}
// Null safety 인자값에 null 이 포함 될 수 있도록 한다
