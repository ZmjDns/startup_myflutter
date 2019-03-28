//类型一旦确定后则不能再更改其类型。
var t = "hi word";

//t = 1000;报错

// 2.dynamic和object
class aaa{
  dynamic  tt;
  Object xx;

  main(){
    tt = "hi word";
    xx = "Hello Object";
//下面代码没有问题
    tt = 1000;
  }


//Dart是一种真正的面向对象的语言，所以即使是函数也是对象，并且有一个类型Function。
// 这意味着函数可以赋值给变量或作为参数传递给其他函数，这是函数式编程的典型特征。

  bool isNoble(int atomicNumber){
    return false;
  }


  void _nobleGass(CALLLBACK ){

  }

  //函数作为参数传递
void execute(var callback){
    callback();
}

void test(){
  execute(() => print("XXX"));
}

  //可选位置参数
  String say(String from,String msg, [String device]){
    var result = "$from says $msg";
    if(device != null){
      result = "$result with $device";
    }
    return result;
  }

  //可选的命名参数
  //设置【bold】和【hidden】标志
  void enableFlag({bool bold,bool hidden}){
    //...
  }
  //调用函数时，可以使用指定命名参数
void test2(){
    enableFlag(bold: true,hidden: false);
}

  //Future （耗时）
  void test3(){
    Future.delayed(new Duration(seconds: 2),(){
      return "hi word!";
    }).then((data){
      print(data);
    });
  }
  //异步中发生错误，在catchError中捕获
  void test4(){
    Future.delayed(new Duration(seconds: 2),(){
      throw AssertionError("Error");
    }).then((data){
      //执行成功
      print("success");
    }).catchError((e){
      //执行失败，捕获异常
      print(e);
    });
  }
  //在then的回调函数中获取异常
  void test5(){
    Future.delayed(new Duration(seconds: 2),(){
      throw AssertionError("Error");
    }).then((data){
      print("success");
    },onError: (e){
      print(e);
    });
  }
  //Future.whenComplete
  void test6(){
    Future.delayed(new Duration(seconds: 2),(){
      throw AssertionError("Error");
    }).then((data){
      //执行成功
      print(data);
    }).catchError((e){
      print(e);
    }).whenComplete((){
      //无论成功或失败都会走这里
      print("Thread is over");
    });
  }
  //Future.wait
  //有时候,我们需要等待多个异步任务都执行结束后才进行一些操作
  //比如我们有一个界面，需要先分别从两个网络接口获取数据，获取成功后，
  //我们需要将两个接口数据进行特定的处理后再显示到UI界面上，应该怎么做？
  //答案是Future.wait，它接受一个Future数组参数，只有数组中所有Future都执行成功后，才会触发then的成功回调，
  //只要有一个Future执行失败，就会触发错误回调。
  //下面，我们通过模拟Future.delayed 来模拟两个数据获取的异步任务，等两个异步任务都执行成功时，将两个异步任务的结果拼接打印出来
  void tese7(){
    Future.wait([
      //2秒后返回结果
      Future.delayed(new Duration(seconds: 2),(){
        return("hello");
      }),
      //get the result after 4 seconds
      Future.delayed(new Duration(seconds: 4),(){
        return "word";
      })
    ]).then((results){
      print(results[0] + results[1]);
    }).catchError((e){
      print(e);
    });
  }
  //Async/await
  //如果代码中有大量异步逻辑，并且出现大量异步任务依赖其它异步任务的结果时，必然会出现Future.then回调中套回调情况。
  //举个例子，比如现在有个需求场景是用户先登录，登录成功后会获得用户Id，然后通过用户Id，再去请求用户个人信息，获取到用户个人信息后，
  //为了使用方便，我们需要将其缓存在本地文件系统，代码如下：

  void test8(){
    //分别定义各个任务
    Future<String> login(String name,String password){
      //...
      //登陆
    };

    Future<String> getUserInfo(String id){
      //获取用户信息
    }

    Future<String> saveUserInfo(String userInfo){
      //保存用户信息
    }

    //接下来，执行整个流程任务,该过程被称为     回调地域
    login("Alice", "123").then((id){
      //登陆成功后通过ID获取用户信息
      getUserInfo(id).then((userInfo){
        //获取用户信息后保存
        saveUserInfo(userInfo).then((data){
          //保存用户信息
        });
      });
    });


    //使用Future消除callBack hell（回调地域）
    login("Alice", "123").then((id){
      return getUserInfo(id);
    }).then((userInfo){
      return saveUserInfo(userInfo);
    }).then((e){

    }).catchError((e){
      print(e);
    });


    //使用async/await消除 callBack hell
    task() async{
      try{
        String id = await login("Alice", "123");
        String userInfo = await getUserInfo(id);
        await saveUserInfo(userInfo);
        //执行接下来的操作
      }catch(e){//异常捕获
        print(e);
      }
    }
  }

  //Stream
  void test9(){
    Stream.fromFutures([
      //1秒后返回结果
      Future.delayed(new Duration(seconds: 1),(){
        return"hello 1";
      }),
      //抛出一个异常
      Future.delayed(new Duration(seconds: 2),(){
        throw AssertionError("Error");
      }),
      //3秒返回结果
      Future.delayed(new Duration(seconds: 3),(){
        return "hello 3";
      })
    ]).listen((data){
      print(data);
    },onError: (e){
      print(e.message);
    },onDone: (){

    });
  }

}

