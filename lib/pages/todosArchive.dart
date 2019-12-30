import 'package:flutter/material.dart';

class TodosAchivePage extends StatefulWidget {
  @override
  _TodosAchivePageState createState() => _TodosAchivePageState();
}

class _TodosAchivePageState extends State<TodosAchivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Archive'),),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                height: 70.0,
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFF67cf44),
                      Color(0xFF87C789),
                      Color(0xFF87C789),
                      Color(0xFF67CF44),
                    ],
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('GPM', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent, ),),
                    Text('TRACKING', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white, ))
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Container(
              height: 72.0,
              width: 72.0,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage('https://avatars1.githubusercontent.com/u/27728874?s=460&v=4')
                )
              ),
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white70,
                ),
              ),
              Text('Jean Paul Gotopo M. ', textAlign: TextAlign.center, style: TextStyle(
              color: Colors.blue[600], fontWeight: FontWeight.w700, fontSize: 16.0),)
            ],
          ),
          Divider(),
          Card(
            margin: EdgeInsets.all(12.0),
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(08.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('india.png', width: 50.0, height: 50.0,),
                        /* decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: NetworkImage('https://image.flaticon.com/icons/svg/197/197419.svg')
                            )
                        ), */
                      Text('INDIA', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Desarrollo Social', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                      Text('34 años', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Ministro Cristiano', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                      Text('Iglesia Peniel', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Lima Centro', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                      Text('Proyecto Aprobado', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: RaisedButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
             onPressed: () {
               Navigator.of(context).pushNamed('/maintabs');
             },
             textColor: Colors.white,
             padding: const EdgeInsets.all(0.0),
             child: Container(
               width: 200.0,
               decoration:  BoxDecoration(
                 borderRadius: new BorderRadius.all(
                   Radius.circular(25)
                 ),
                 gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF65B04B),
                    Color(0xFF409422),
                    Color(0xFF409422),
                    Color(0xFF65B04B),
                  ],
                ),
               ),
               padding: const EdgeInsets.all(10.0),
               child: const Text(
                 'VOLVER', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)
               ),
             ),
            ),),
          )
        ],
      ), 
    );
  }
}