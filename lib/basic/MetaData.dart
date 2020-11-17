///////////////////////元数据//////////////////
///////////////////以@为标识符   其后跟运行时常量或对常量构造函数的调用//////////////////////////////
class Television {
  @deprecated
  void active () {
    turnOn();
  }

  void turnOn () {
    print('trun on');
  }
}
//其后跟运行时常量（或对常量构造函数的调用）
class Todo {
  final String who;
  final String what;

  const Todo(this.who,this.what);
}

@Todo('seth','make this do something')
void doSomething () {
  print('do Something');
}

void main () {
  var tel = Television();
  tel.active();

  doSomething();
}