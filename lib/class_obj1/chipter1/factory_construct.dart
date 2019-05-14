/**
 * 工厂构造方法
 */
class Logger{
  final String name;

  static final Map<String,Logger> _cache = <String,Logger>{};

  factory Logger(String name){
    if(_cache.containsKey(name)){
      return _cache[name];
    }else{
      final logger = Logger._interval(name);
      _cache[name] = logger;
      return logger;
    }
  }

  //命名的构造方法
  //私有的，构造方法也跟其他的属性、方法一样通过  “_”来表示私有的
  Logger._interval(this.name);

  void log(String msg){
    print(msg);
  }
}