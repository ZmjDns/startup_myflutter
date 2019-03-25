import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'strings.dart';

import 'myappbar.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   /* //final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          //child: new Text('Hello World,I am flutter'),
          //child: new Text(wordPair.asCamelCase),
          child: new RandomWords(),
        ),
      ),
    );*/

   return new MaterialApp(
     title: Strings.appTitle,
     theme: new ThemeData(
       primaryColor: Colors.white,
     ),
     //home: new RandomWords(),//无限滚动的list单词对
     home: new GHFlutter(),   //自定义的组件
   );
  }
}

class GHFlutter extends StatefulWidget{
  @override
  createState() => new GHFlutterState();
}

class GHFlutterState extends State<GHFlutter>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(Strings.appTitle),
      ),
      body: new Center(   //屏幕中心显示
        child: new Text(Strings.appTitle),
      ),
    );
  }
}

//随机单词对界面
class RandomWords extends StatefulWidget{
  @override
  createState() => new RandomWordsState();

}

class RandomWordsState extends State<RandomWords>{

  //存放单词对的容器
  final _suggestions = <WordPair>[];
  //存放收藏单词对的容器，Set(集合)比List（）要好，Set集合中不允许添加重复数据
  final _saved = new Set();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();
    //return new Text(wordPair.asPascalCase);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(Strings.appTitle),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      //对于每个建议的单词对 都会调用一次itemBuild，然后将单词对添加到ListTitle行中
      //在偶数行，该函数会为单词对添加一个ListTitle row
      //在奇数行，该函数会添加一个分割线widget，来分割相邻的词对
      //注意，在小屏上分割线看起来会比较吃力
      itemBuilder: (context,i){
        //在每一列之前添加一个1像素高的分割线widget
        if(i.isOdd) return new Divider();

        //语法"i ~/ 2"表示i除以2，但返回值是整形（向下取整），比如i为 1，2，3，4，5时
        //结果为0，1，1，2，2，这可以计算出ListView减去分割线后的实际单词对数量
        final index = i ~/ 2;
        //如果是建议列表中最后一个单词对
        if(index >= _suggestions.length){
          //...接着在生成10个单词对，然后添加到列表
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }


  Widget _buildRow(WordPair pair){
    //检查确保单词还没有添加到收藏夹中
    final alreadySaved = _saved.contains(pair);

    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      //添加一个 心形 图标到ListTitles以启用收藏功能
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      //添加交互，点击事件
      onTap: (){
        setState(() {
          if(alreadySaved){
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      },

    );
  }

  //打开一个新的路由（界面）
  void _pushSaved(){
    Navigator.of(context).push(
      //添加MaterialPageRoute及其builder
      //现在，添加生成ListTile行的代码。ListTile的divideTiles()方法在每个ListTile之间添加1像素的分割线。 该 divided 变量持有最终的列表项。
      new MaterialPageRoute(
          builder: (context){
            final tiles = _saved.map(
                (pair){
                  return new ListTile(
                    title: new Text(
                      pair.asPascalCase,
                      style: _biggerFont,
                    ),
                  );
                },
            );
            final divided = ListTile
              .divideTiles(
                context: context,
              tiles: tiles,
            )
            .toList();

            //builder返回一个Scaffold，其中包含名为“Saved Suggestions”的新路由的应用栏。
            //新路由的body由包含ListTiles行的ListView组成; 每行之间通过一个分隔线分隔。
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('Saved Suggestions'),
              ),
                body: new ListView(children: divided,),
            );
          },
      ),
    );
  }
}

