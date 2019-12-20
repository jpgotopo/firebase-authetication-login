import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'fases.dart';

class LocalChurch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: media.height * 0.4,
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
                  Text('Sirviendo en la Iglesia', style: TextStyle(color: Colors.white, fontSize: 14),), 
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Puerta del Cielo',textAlign: TextAlign.center,  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: Text('Av. Brasil 1733 - Lima',textAlign: TextAlign.center,  style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                  ),
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
                      child: Text('Ministerios')
                    ),
                    SizedBox(height: 12,),
                    Container(
                      
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: media.height * 0.12,
                      child: ListView(
                        children: <Widget>[
                          DataInfo(info: 'Escuela Dominical'),
                          DataInfo(info: 'Misiones',),
                          DataInfo(info: 'Plantación de Iglesias',),
                          DataInfo(info: 'Damas'),
                          DataInfo(info: 'Varones'),
                          DataInfo(info: 'Ministerio Juvenil'),
                          DataInfo(info: 'Evangelismo'),
                          DataInfo(info: 'Diácono(a)'),
                          DataInfo(info: 'Pastor',),
                          DataInfo(info: 'Tecnología y Comunicaciones',)
                        ],
                      )
                    ),
                    
                    
                    Padding(
                      padding: EdgeInsets.all(4),
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