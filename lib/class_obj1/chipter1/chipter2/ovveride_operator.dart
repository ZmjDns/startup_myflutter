/**
 * 操作符的覆写   （运算符的重载）
 * 1.覆写操作符需要在类中定义
 * 2.如果需要覆写等号（==），还需要覆写hashCode getter 方法
 *
 *
 */
void main(){
  var person1 = Person(18);
  var person2 = Person(20);

  print(person1 > person2);

  print(person2["age"]);

  print(person1 == person2);
}

class Person{
  int age;

  Person(this.age);

  //操作符复写
  bool operator > (Person person){
    return this.age > person.age;
  }

  int operator [] (String str){
    if("age" == str){
      return this.age;
    }

    return 0;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              age == other.age;

  @override
  int get hashCode => age.hashCode;



}