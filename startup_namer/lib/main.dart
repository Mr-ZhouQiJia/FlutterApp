import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var a = 'sss';
    print("The Type Of a is ${a.runtimeType}");
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      home: new RandomWords(),
    );
  }
  
}

class RandomWordsState extends State<RandomWords> {
  @override
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();
  final TextStyle _biggerFont =const TextStyle(fontSize: 18.0);

  Widget build(BuildContext context) {
    // TODO: implement build
    //final WordPair wordPair = new WordPair.random();
    //return new Text(wordPair.asPascalCase);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list),onPressed: _pushSaved,)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  //页面跳转
  void _pushSaved(){
    print("push to new page");
    Navigator.of(context).push(
       new MaterialPageRoute<void>(
         builder: (BuildContext context){
           final Iterable<ListTile> tiles =_saved.map(
             (WordPair pair){
               return new ListTile(
                 title : new Text(
                   pair.asPascalCase,
                   style :_biggerFont,
                 )
               );
             },
           );
           final List<Widget> divided =ListTile
            .divideTiles(
              context: context,
              tiles: tiles
            )
            .toList();

            return new Scaffold(
              appBar: new AppBar(
                title: const Text('saved Suggestions'),
              ),
              body: new ListView(children: divided),
            );
         }
       ) 
    );
  }

  Widget _buildSuggestions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),

      itemBuilder: (BuildContext _context, int i) {
        // 在每一列之前，添加一个1像素高的分隔线widget
        if (i.isOdd) {
          return new Divider();
        }
        final int  index = i ~/ 2;
        if (index >=_suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
        title: new Text(
          pair.asPascalCase,
          style :_biggerFont,
        ),
        trailing: new Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color :alreadySaved ? Colors.red : null,
        ),
        onTap: (){
          setState(() {
            if (alreadySaved) {
              _saved.remove(pair);
            }else {
              _saved.add(pair);
            }
          });
        },
    );
  }

       
}
class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => new RandomWordsState();

}







