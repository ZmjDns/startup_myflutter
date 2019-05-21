/**
 * 枚举类型
 * 1.枚举是一种有穷序列集的数据类型
 * 2.使用关键字enum定义一个枚举
 * 3.常用于代替常量，控制语句等
 * 4.index从0开始一次累加
 * 5.不能指定原始值
 * 6.不能添加方法
 */
void main(){
  var currentSeason = Season.summer;

  print(currentSeason.index);

  switch(currentSeason){
    case Season.spring:
      print("1-3月");
      break;
    case Season.summer:
      print("4-6月");
      break;
    case Season.autumn:
      print("7-9月");
      break;
    case Season.winter:
      print("9-12月");
      break;
  }
}
/**
 * 枚举类
 */
enum Season{
  spring,
  summer,
  autumn,
  winter
}