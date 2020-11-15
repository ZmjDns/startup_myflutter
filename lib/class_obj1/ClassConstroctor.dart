import 'dart:math';

class Point{
  num x,y;
  num distanceFromOrigin;

  //非匿名构造函数
  // 将distanceFromOrigin写入构造器
  Point(this.x,this.y) : distanceFromOrigin = sqrt(x*x + y*y);

  //等价于上面
  // Point(this.x,this.y){
  //   this.distanceFromOrigin = sqrt(x*x + y*y);
  // }


  Point.origin() : this(0,0);

  Point.fromJson(Map<String,num> json) : this(json['x'],json['y']);

  Point.withAssert(this.x,this.y) : assert(x >= 0),distanceFromOrigin = sqrt(x*x + y*y);

  num distanceTo(Point other){
    var dx = x - other.x;
    var dy = y - other.y;

    return sqrt(dx * dx + dy * dy);
  }

  @override
  String toString() => 'Point($x,$y)';
}

class ImmutablePoint {
  //常量构造函数，用const来创建编译时常量，创建两个完全一样的编译时常量将产生同一个实例
  static final origin = const ImmutablePoint(0,0);
  final num x,y;
  const ImmutablePoint(this.x,this.y);
}

class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Persion');
  }
}

class Employee extends Person {
  Employee.fromJson(Map data) : super.fromJson(data){
    print('in persion');
  }
}

class Logger {
  final String name;
  bool mute = false;

  static final _cache = <String, Logger>{};

  factory Logger(String name) {
    if(_cache.containsKey(name)){
      return _cache[name];
    }else{
      final logger = Logger._interval(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._interval(this.name);

  void log(String msg) {
    if(!mute) print(msg);
  }
}

class Rectangle {
  num left,top,width,height;

  Rectangle(this.left,this.top,this.width,this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

class Person1 {
  final _name;
  Person1(this._name);

  String greet(String who) => 'Hello, $who,I am $_name';//Do you konw who
}

class Imposter implements Person1 {

  get _name => '';

  @override
  String greet(String who)  => 'Hi $who, Do you konw who I am ?';
}

String greetBob(Person1 person) => person.greet('Bob');

