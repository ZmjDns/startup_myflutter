/**
 * 类
 * 类前加"_"表示是私有的（包括方法和成员前加“_”也是私有的，不能被外部调用），
 *
 */
class Person{
  String name;
  int age;
  final String address = "aderss";

  void work(){
    print("Name is $name ,Age is $age,he is working");
  }
}