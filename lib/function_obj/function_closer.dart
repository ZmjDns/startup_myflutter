/**
 * 闭包
 * 方法内部的方法，通过调用外部的方法来获取内部方法（对象）
 */
main(){
  var fun = a();

  fun();
  fun();
  fun();
  fun();
  fun();
}

a(){
  var count = 0;

//  printCount(){
//    print(count++);
//  }

  return (){
    print(count++);
  };
}