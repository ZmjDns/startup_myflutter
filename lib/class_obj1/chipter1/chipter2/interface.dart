/**
 * 接口
 * 1.类和接口是统一的，类就是接口
 * 2.每一个类都隐式的定义了一个包含所有实例成员的接口
 * 3.如果是复用已有类的实现，使用集成 extends
 * 4.如果是使用已有类的外在行为，使用接口 implements
 */
void main(){

  var student = new Student();

  student.run();
  student.study();

}

class Person{
  String name;
  int age;


  int get isAdult =>  18;

  void run(){
    print("Person runn...");
  }
}

abstract class Study{

  void study();
}

class Student implements Person,Study{
  @override
  int age;

  @override
  String name;

  @override
  int get isAdult => 15;

  @override
  void run() {
    print("Student run...");
  }

  @override
  void study() {
    print("Student study...");
  }

}