import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
///自带删除的ITextField
class DDTextfield extends StatefulWidget {
  String placeHolder;
  DDTextfield({@required this.placeHolder,});
  @override
  DDTextfieldState createState() => new DDTextfieldState();
}

class DDTextfieldState extends State<DDTextfield>  {
  String _inputText = "52345";                                  //默认输入的内容
  TextEditingController _textController;                      //控制器，控制TextField文字
  bool _hasDeleteIcon = false;                                //判断是否正在输入内容

  @override
  void initState() {
    super.initState();
    _textController = new TextEditingController.fromValue(
      TextEditingValue(
        text: _inputText,
       )
    );
    _textController.addListener(() => setState(()=>{}));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //屏幕宽度
    final height =MediaQuery.of(context).size.height; //屏幕高度 
    var inputDecoration = InputDecoration(
              border: InputBorder.none,
              hintText: "您的手机号码",
              hintStyle: TextStyle(color: Color(0x727171),fontSize: 13),
              //判断是否输入内容
              suffixIcon: _hasDeleteIcon ? new Container(
                width: 20,
                height: 20,
                child: new IconButton(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  iconSize: 18,
                  icon: Icon(Icons.cancel,color: Colors.grey,),
                  onPressed: (){
                    print("删除$_inputText");
                    _inputText = "";
                    _textController.text = "";
                    _hasDeleteIcon = (_inputText.isNotEmpty);
                    
                  },
                ),
              ) :  new Text(""),
            );
    var textField2 = TextField(
            controller: _textController,
            autofocus: true,
            cursorColor: Colors.blue,
            //style: TextStyle(color: Colors.yellow),
            decoration: inputDecoration,
            maxLength: 11,
            maxLengthEnforced: true,
            keyboardType: TextInputType.number,
            onChanged: (str){
              setState(() {
                _inputText = str;
                _hasDeleteIcon = (_inputText.isNotEmpty);
                print(str);
              });
            });
    var ddTextField = Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      child: textField2,
    );
    return Container(
      width: width,
      height: 100,
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          ddTextField,
          Container(
            color: Colors.orange,
            width: width,
            height: 30,
            margin: EdgeInsets.only(top: 0,bottom: 0),
            alignment: Alignment.center,
            child: Text(
              _inputText,style: TextStyle(color: Colors.red,fontSize: 25,),
              ),
            )
          
        ],
        
      ),
    );
    
  }
  
}




