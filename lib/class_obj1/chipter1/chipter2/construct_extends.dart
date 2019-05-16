/**
 * 继承中的构造方法
 * 1.子类的构造方法会默认调用父类的无名无参构造方法
 * 2.如果父类没有无名无参的构造方法，则需要显示调用父类的构造方法
 * 3.在构造方法参数后使用：显示调用父类构造方法
 * 构造方法执行顺序
 * 1.父类的构造方法在子类的构造方法体开始执行的位置调用
 * 2.如果有初始化列表，初始化列表会在父类构造方法之前调用
 *
 */
void main(){

  Person person = new Student("Tim","male");

  var student = new Student("TOm","female");
  print(student.name);

}

class Person{
  String name;

  //无名无参
//  Person(){
//    print("Person Construct.");
//  }

  //无名有参
  Person(this.name);

  //有名有参
  Person.withName(this.name);
}

class Student extends Person{
  int age;

  final gender;

  //Student(String name) : super(name);
  Student(String name,String gender) :this.gender = gender,super.withName(name);
  //Student.withName(String name) : super.withName(name);
}