/**
 * 泛型
 * 1.dart中类型是可选的，可使用泛型限定类型
 * 2.使用泛型能够有效的减少代码的重复
 * 3.类的泛型
 * 4.方法的泛型
 */
void main(){
  var continer = Continer<String>();

  continer.put("1");
  var continer2 = Continer<int>();
  continer2.put(1);

  var fg = FunGenerics();
  fg.put<String>("123");
  fg.put<int>(1);

}

class Continer<T>{
  T element;

  void put(T element){
    this.element = element;
  }

}

class FunGenerics{
  void put<T>(T element){
    print(element);
  }
}