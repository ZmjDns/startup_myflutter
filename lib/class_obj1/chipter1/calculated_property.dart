/**
 * 类的计算属性
 */
void main(){

  var rectangle = Rectangle();

  rectangle.width = 10;
  rectangle.height = 20;

  print(rectangle.area);

  //给计算属性赋值
  rectangle.area = 200;
  print(rectangle.width);
}

class Rectangle{
  num width;
  num height;

  //类成员的计算属性
  num get area => width * height;
  set area(value){
    width = value / 20;
  }

}