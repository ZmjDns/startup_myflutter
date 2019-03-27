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
    return false;
  }


  void _nobleGass(CALLLBACK ){

  }

  //函数作为参数传递
void execute(var callback){
    callback();
}

void test(){
  execute(() => print("XXX"));
}

  //可选位置参数
  String say(String from,String msg, [String device]){
    var result = "$from says $msg";
    if(device != null){
      result = "$result with $device";
    }
    return result;
  }

  //可选的命名参数
  //设置【bold】和【hidden】标志
  void enableFlag({bool bold,bool hidden}){
    //...
  }
  //调用函数时，可以使用指定命名参数
void test2(){
    enableFlag(bold: true,hidden: false);
}




}

