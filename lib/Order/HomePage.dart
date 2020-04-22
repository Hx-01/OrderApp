
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

}

class HomeState extends State<Home>{
final TextEditingController _orderController = new TextEditingController();
  int radioGroup = 0;
  String myOrder = '';
  
  String orderPrise(String orderPrice, String  ) {
    if (orderPrice.isNotEmpty && int.parse(orderPrice) > 0) {
      double result =  int.parse(orderPrice) * String;
       return myOrder = '$result';
    } else {
      print('Enter Number');
      return myOrder = 'Enter Number' ;
    }
  }



  void radioEventHandler(int Value){
    setState(() {
      radioGroup = Value;
      switch(radioGroup){
        case 0:
          orderPrise(_orderController.text , 230.0);
          myOrder = 'T-Shirt: $myOrder EGP';
          break;
        case 1:
          orderPrise(_orderController.text , 300.0);
          myOrder = 'Trouser: $myOrder EGP';
              break;
        case 2:
          orderPrise(_orderController.text , 450.0);
          myOrder = 'Shoes: $myOrder EGP';
          break;
        case 3:
          orderPrise(_orderController.text , 980.0 - 70 );
          myOrder = 'Package: $myOrder EGP';
          break;
      }
    }
    );
  }


  @override
  Widget build(BuildContext context) {
return new Scaffold(
  appBar: new AppBar(
    backgroundColor: Colors.indigoAccent,
    title: new Text('HX Store'),
  ),
  body: new Container(
    child: new ListView(
      children: <Widget>[
        new Image.asset('images/hxs1.jpg',
        ),
        new Padding( padding: EdgeInsets.all(12),
        ),
        new Container(
          alignment: Alignment.center,
//          margin: EdgeInsets.all(5),
//          padding: EdgeInsets.all(12),
          child: new Column(
            children: <Widget>[
              new Text('Order NOW!!' ,
              style: TextStyle(fontSize: 18),
              ),
           new Padding( padding: EdgeInsets.all(12),),
           new Container(
             margin: EdgeInsets.all(10),
            width: 300,
            child: new TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(hintText: '### ###',
                labelText: 'Slect your quantity.',
                icon: new Icon(Icons.add_circle,
                color: Colors.indigoAccent,)),
                controller: _orderController,
              ),),
          new Padding( padding: EdgeInsets.all(10),),
            new Column(

              children: <Widget>[
                new RadioListTile<int>(
                  value: 0,
                    groupValue: radioGroup,
                    onChanged: radioEventHandler,
                  title: new Text('T-Shirt'),
                  subtitle: new Text('HXstore'),
                  activeColor: Colors.indigoAccent,
                ),
                new RadioListTile<int>(
                  value: 1,
                  groupValue: radioGroup,
                  onChanged: radioEventHandler,
                  title: new Text('Trousers'),
                  subtitle: new Text('HXstore'),
                  activeColor: Colors.indigoAccent,
                ),
                new RadioListTile<int>(
                  value: 2,
                  groupValue: radioGroup,
                  onChanged: radioEventHandler,
                  title: new Text('Shoes'),
                  subtitle: new Text('HXstore'),
                  activeColor: Colors.indigoAccent,
                ),
                new RadioListTile<int>(
                  value: 3,
                  groupValue: radioGroup,
                  onChanged: radioEventHandler,
                  title: new Text('Get Package with a special discount'),
                  subtitle: new Text('HXstore'),
                  activeColor: Colors.indigoAccent,
                ),
              ],
            ),
            new Padding( padding: EdgeInsets.all(12),),
            new Container(
              child: new Text( _orderController.text.isEmpty ? 'Slect your quantity !':'$myOrder',
              style: TextStyle(fontSize: 20,
              color: Colors.indigoAccent
              ),
              ),
            ),
            ],
          ),
        ),
      ],
    ),
  ),
);
  }

}