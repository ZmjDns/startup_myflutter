Future<String> lookUpVersion() async => '1.0.0'; /*{
  //中间执行异步操作。。。。。。
  return '1.0.0';
}*/

Future checkVersion() async {
  var version = lookUpVersion();
  print('checkVersion: $version');
}



void main() async {
  var version;
  try{
    version = await checkVersion();
  }catch(e){
    print(e);
  }
  print('main: $version');


  var s = Stream.fromIterable([1,2,3]);
  await for(var v in s){
    print(v);
  }

}