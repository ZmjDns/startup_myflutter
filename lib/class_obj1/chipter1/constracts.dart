/**
 * 类的构造方法（与Java有区别）
 * 构造方法不能重载
 * 多个构造方法需要以  类名.fun()
 *
 **/
void main(){

}

class Person{
  String name;
  int age;
  final String gender = "aa";

  //构造方法1
  Person(this.name,this.age);

  //构造方法2
  Person.withNme(String name){
    this.name = name;
  }

  Person.withName(this.age);

  void work(){
    print("Name is $name,he is working");
  }
}