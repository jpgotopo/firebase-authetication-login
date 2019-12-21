import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CallClarity extends StatelessWidget {
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
              height: media.height * 0.35,
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
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFFF1A746),
                    Color(0xFFD58A28),
                    Color(0xFFD58A28),
                    Color(0xFFF1A746),
                  ],
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  // TODO aqui van datos importados desde base de datos
                  AutoSizeText('Mi Llamado Misionero es', style: TextStyle(color: Colors.white, fontSize: 14),), 
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AutoSizeText('Traducción Bíblica y Alfabetización',textAlign: TextAlign.center,  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                  AutoSizeText('Sudeste Asiático')
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: media.height * 0.45,
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
                      child: Text('Mi Breve Testimonio', style: TextStyle(color: Colors.white, fontSize: 18))
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: media.width * 0.8,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF727272), width: 0.2),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,
                      ),
                      height: media.height * 0.18,
                      child: Padding(
                        
                        padding: const EdgeInsets.all(8.0),
                        child: Text('"En el año 2009 fui a un taller de Orientación a la Traducción Bíblica y fue allí donde descubrí la gran necesidad que hay entre los Pueblos que no tienen Biblia."', style: TextStyle(fontWeight: FontWeight.bold, ), textAlign: TextAlign.center,),
                      )
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