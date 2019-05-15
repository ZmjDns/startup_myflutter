/**
 * 对象操作符
 * 1.条件成员访问  ?.
 * 2.类型转换as
 * 3.是否指定类型 is，is!
 * 4.级联操作 ..
 */
void main(){

  //1.条件成员访问  ?.
  Person person = new Person();
  person?.name;
  person?.work();
  print(person?.name);

  var person1;
  person1 = "";
  person1 = new Person();

  //2.类型转换as
  print((person1 as Person).name);
  (person1 as Person).work();

  //3.是否指定类型 is，is!
  if(person1 is Person){
    (person1 as Person).work();
  }

  //4.级联操作 ..
  //var person2 = new Person();
  new Person()..name = "Tom"
        ..age = 18
        ..work();
}

class Person {
  String name;
  int age;


  void work() {
    print("working....");
  }
}