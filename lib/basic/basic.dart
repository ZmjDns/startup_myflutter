import 'package:startup_myflutter/class_obj1/ClassConstroctor.dart';

main () {
  var a = 5 ~/ 2;

    print("整除5 ~/ 2 = $a");

//测试ClassCOnstrcotor.dart
  var point = Point(2, 3);

  print(point.distanceTo(Point(5, 6)));


  var testLogger = Logger('test');
  testLogger.log('hell,I am testLogger');

}