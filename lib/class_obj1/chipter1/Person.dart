/**
 * 类
 * 类前加"_"表示是私有的（包括方法和成员前加“_”也是私有的，不能被外部调用），
 *
 */
class Person{
  String name;
  int age;
  final String address;

  Person(this.name,this.age,this.address);

  Person.withName(this.name):this.address="";

  void work(){
    print("Name is $name ,Age is $age,he is working");
  }
}