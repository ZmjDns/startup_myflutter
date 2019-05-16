/**
 * 抽象类
 * 1.抽象类用abstract修饰，不能被实例化
 * 2.抽象方法不用 abstract 修饰，无实现
 * 3.抽象类可以没有抽象方法
 * 4.有抽象方法的类必须声明为抽象类
 */
void main(){

  var student = new Student();
  student.run();

}

abstract class Person{

  //抽象方法
  void run();
}

class Student extends Person{
  @override
  void run() {
    print("Run ......");
  }

}