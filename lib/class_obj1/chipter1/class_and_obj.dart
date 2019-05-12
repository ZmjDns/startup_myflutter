import 'Person.dart';
/**
 * 类与对象
 */
main(){
  var person = _Person();

  person.name = "Tom";
  person.age = 18;

  person.work();
}
/**
 * 私有类，只能在本dart library（dart文件）中被引用
 */
class _Person{
  String name;
  int age;
  final String address = "aderss";

  void work(){
    print("Name is $name ,Age is $age,he is working");
  }
}