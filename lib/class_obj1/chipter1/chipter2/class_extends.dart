import 'Person.dart';
/**
 * 类的继承
 * 1.使用关键字extends继承一个类
 * 2.子类会继承父类的可见属性和方法，不会继承构造方法
 * 3.子类能够复写父类的方法、getter和setter
 *4.单继承，多态性
 */
void main(){

//  var student = new Student();
//  student.study();
//
//  student.name = "Tom";
//  student.age = 15;
//
//  student.isAdult;
//
//  student.run();

  //多态
  //父类的引用，传递子类的实例
  //能调用父类的所有成员和方法，但是不能调用子类独有的成员和方法
  Person person = new Student();
  person..name = "Tim"..age = 20;

  if(person is Student){
    person.study();
  }

  print(person);
}

class Student extends Person{

  @override
  bool get isAdult => age > 15;

  void study(){
    print("Student study...");
  }

  @override
  void run() {
    print("Student run...");
  }
//注释掉子类方法会走父类方法
//  @override
//  String toString() {
//    return "Student name is $name,age is $age";
//  }
}