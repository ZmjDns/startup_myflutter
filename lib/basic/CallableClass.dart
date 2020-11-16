////////////////////////////可调用类///////////////////////////////////////
class WannableFunction {
  call(String a,String b,String c) => '$a,$b,$c';
}

void main () async {
  var wf = WannableFunction();
  var out = wf("Hi","there","gone");
  print('$out');
}