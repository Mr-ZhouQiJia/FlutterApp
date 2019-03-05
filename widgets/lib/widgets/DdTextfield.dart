import 'package:flutter/material.dart';

///自带删除的ITextField
typedef void ITextFieldCallBack(String content);

enum DDTextInputType {
  text,
  multiline,
  number,
  phone,
  datetime,
  emailAddress,
  url,
  password
}


class DDTextfield extends StatefulWidget {

  String placeHolder;

  DDTextfield({@required this.placeHolder,});
  @override
  DDTextfieldState createState() => new DDTextfieldState();
}

class DDTextfieldState extends State<DDTextfield>  {

  String _inputText = "";
  
  @override
  Widget build(BuildContext context) {

    TextEditingController _controller = new TextEditingController.fromValue(
      TextEditingValue(
        text: _inputText,

       )
    );
    void _textChanged(){
    
    }
    return Container(
      width: 414,
      height: 100,
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          TextField(
            controller: _controller,
            autofocus: true,
            maxLength: 11,
            keyboardType: TextInputType.number,
            onChanged: (str){
              setState(() {
                _inputText =str;
                print(str);
              });
            }),
          Container(color: Colors.orange,child: Text(
            _controller.text,style: TextStyle(color: Colors.red,fontSize: 14),

          ),,)
          
          
        ],
        
      ),
    );
    
  }
  
}




