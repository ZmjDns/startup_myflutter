//类型一旦确定后则不能再更改其类型。
var t = "hi word";

//t = 1000;报错

// 2.dynamic和object
class aaa{
  dynamic  tt;
  Object xx;

  main(){
    tt = "hi word";
    xx = "Hello Object";
//下面代码没有问题
    tt = 1000;
  }


//Dart是一种真正的面向对象的语言，所以即使是函数也是对象，并且有一个类型Function。
// 这意味着函数可以赋值给变量或作为参数传递给其他函数，这是函数式编程的典型特征。

  bool isNoble(int atomicNumber){
    //return _nobleGases[atomicNumber] != null;
  }


}

