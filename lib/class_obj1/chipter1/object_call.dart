/**
 * 对象call方法
 * 如果类实现了call（）方法，则该类的对象可以作为方法调用
 */
void main(){
  var person = new Person();

  person..name = "Tom"..age = 18;

  //如果类实现了call（）方法，则该类的对象可以作为方法调用
  //person();
  print(person("Test",20));
}

class Person {
  String name;
  int age;


  void work() {
    print("working....$name,$age");
  }

//  void call(){
//    print("working....$name,$age");
//  }

  String call(String name,int age){
    return "working....$name,$age";
  }
}