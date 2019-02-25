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
      home: new RandomWords(),
    );
  }
  
}

class RandomWordsState extends State<RandomWords> {
  @override

  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont =const TextStyle(fontSize: 18.0);

  Widget build(BuildContext context) {
    // TODO: implement build
    //final WordPair wordPair = new WordPair.random();
    //return new Text(wordPair.asPascalCase);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('startup Name Generator'),
      ),
      body: _buildSuggestions(),
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
    return new ListTile(
        title: new Text(
          pair.asPascalCase,
          style :_biggerFont,
        ),
    );
  }

       
}
class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => new RandomWordsState();

}







