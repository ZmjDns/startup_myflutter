///////////////////////////////////生成器////////////////////////////////////////
/**
 * 同步生成器
 */
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while(k < n) yield k++;
}
/**
 * 异步生成器
 */
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while(k < n) yield k++;
}

Iterable<int> downFromNaturals(int n) sync* {
  if(n > 0){
    yield n;
    yield* downFromNaturals(n - 1);
  }
}

Future<void> main () async {
  //print(downFromNaturals(10));

  for(var v in naturalsTo(1)){
    print(v);
  }

  await for (var v in asynchronousNaturalsTo(3)){
    print(v);
  }

  for(var v in downFromNaturals(3)){
    print(v);
  }
}