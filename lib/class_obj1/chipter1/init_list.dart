/**
 * 初始化列表在构造方法之前执行
 * 使用逗号分割初始化表达式
 * 初始化列表常用于设置final变量的值
 */
void main(){

}

class Person{
  String name;
  int age;
  final String gender;

  //构造方法1
  Person(this.name,this.age,this.gender);

//  //构造方法2
//  Person.withNme(String name){
//    this.name = name;
//  }
//
//  Person.withName(this.age);

  //初始化列表方法，通常跟在构造方法后面
  Person.withMap(Map map):this.name = map["name"],gender = map["genger"]{
    this.age = map["age"];
  }


  void work(){
    print("Name is $name,he is working");
  }
}