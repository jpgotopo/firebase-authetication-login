import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class MissionaryScreen extends StatelessWidget {
  List
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: media.height * 0.3,
              width: media.width * 0.85,
              decoration: BoxDecoration(
                
                boxShadow: [BoxShadow(
                  color: Colors.black54,
                  offset: new Offset(3.0, 3.0)
                )],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(27), 
                  topRight: Radius.circular(27), 
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF65B04B),
                    Color(0xFF409422),
                    Color(0xFF409422),
                    Color(0xFF65B04B),
                  ],
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  // TODO aqui van datos importados desde base de datos
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AutoSizeText('Mi Compromiso con los Misioneros',textAlign: TextAlign.center,  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: media.height * 0.4,
                width: media.width * 0.85,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                  color: Colors.black45,
                  offset: new Offset(3.0, 3.0)
                )],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Color(0xFF707070), width: 0.2, style: BorderStyle.solid)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: media.height * .05,
                      decoration: BoxDecoration(
                        color: Colors.blue
                      ),
                      child: Text('1er. Año')
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: FloatingActionButton(
                        child: Icon(Icons.arrow_back, size: 32,),
                        onPressed: ()=> Navigator.pop(context),
                      ),
                    )
                  ],
                ),
              ),
            ) 

          ],
        ),
      ),
      
    );
  }
}

class MissionaryItems extends StatelessWidget {
  MissionaryItems({this.title, this.field, this.image});
  final String title;
  final String field;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}