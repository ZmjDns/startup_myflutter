/**
 * 常量构造方法
 * 1.类的构造方法为 const
 * 2.类的成员声明为final
 */
void main(){
  const person = Person("Tom", 18);

  person.work();
}

class Person{
  final String name;
  final int age;

  const Person(this.name,this.age);

  void work(){
    print("working....");
  }
}