/**
 * 匿名方法
 */
main(){
  var fun = (str){
    print("$str");
  };

  fun(4);

  ((){
    print("Hello----");
  })();

  var list = ["H","E","L","L","0"];

  List myList = prinList(list, (str){ return str * 3;});
  
  print(myList);
}

List prinList(List list,f(str)){
  for(var i = 0; i <list.length; i++){
    list[i] = f(list[i]);
  }

  return list;
}