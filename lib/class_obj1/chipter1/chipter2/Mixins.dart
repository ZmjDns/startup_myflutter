/**
 * Mixins
 * 1.Mixins类似于多继承，是在多类继承中重用一个类代码的方式
 * 2.作为Mixins的类不能有显示声明构造方法
 * 3.作为mixins的类只能继承Object
 * 4.使用关键字with连接一个或多个minxin
 */
void main(){
//  var d = new D();
//  d.a();
}
/*class A{
  void a(){
    print("A.a().....");
  }
}

class B{
  void a(){
    print("B.a().....");
  }
  void b(){
    print("B.b()......");
  }
}

class Text {}*/
//3.作为mixins的类只能继承Object
//class C extends Text{
/*class C {
  //2.作为Mixins的类不能有显示声明构造方法
//  C(){
//
//  }
  void a(){
    print("C.a().....");
  }
  void c(){
    print("C.c()......");
  }
}

class D extends A with B,C{

}*/




abstract class Engine{
  void work();
}

class OilEngine implements Engine{
  @override
  void work() {
    print("Work with oil....");
  }
}
class ElectricEngine implements Engine{
  @override
  void work() {
    print("Work with electric....");
  }
}

class Tyre{
  void run(){}
}
//组装而成的car
class Car = Tyre with OilEngine;
//组装加自定义属性的car
class Car1 extends Tyre with OilEngine{
  String name;
}