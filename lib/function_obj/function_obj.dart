
void main(){

  Function fun = printHello;
  fun();

  var list = [1,2,3,4];

  list.forEach(print);


  var list2 = ["h","e","l","l","0"];

  print(listTimes(list2, times));
}
void printHello(){
  print("Hello");
}

List listTimes(List list,String times(String)){
  for(var i = 0; i < list.length; i++){
    list[i] = times(list[i]);
  }
  return list;
}

String times(str){
  return str * 3;
}