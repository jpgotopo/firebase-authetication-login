import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CallPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    Color(0xFFCC1717),
                    Color(0xFFFE3B3B),
                    Color(0xFFFE3B3B),
                    Color(0xFFCC1717),
                  ],
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  // TODO aqui van datos importados desde base de datos
                  AutoSizeText('Mi Llamado Misionero es', style: TextStyle(color: Colors.white, fontSize: 14),), 
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('india.png', width: 50.0, height: 50.0, filterQuality: FilterQuality.high,),
                        /* decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: NetworkImage('https://image.flaticon.com/icons/svg/197/197419.svg')
                            )
                        ), */

                      SizedBox(width: 15,),
                      Text('INDIA', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                ),
                  AutoSizeText('Sudeste Asiático', style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            // sEGUNDA sECCIÓN
            Card(
            
            margin: EdgeInsets.all(12.0),
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                        alignment: Alignment.center,
                        height: media.height * .05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blue
                        ),
                        child: Text('Datos Relevantes', style: TextStyle(color: Colors.white, fontSize: 18))
                      ),
                ),
                Stats(
                  dato: 'Total de Etnias',
                  res: 2718,
                ),
                Stats(
                  dato: 'Población',
                  res: 1366418000,
                ),
                Stats(
                  dato: 'Etnias No Alcanzadas',
                  res: 2445	
                ),
                Stats(
                  dato: 'Escala de Progreso',
                  res: 1
                )
              ],
            ),
          ),
          Padding(
                      padding: EdgeInsets.all(4),
                      child: FloatingActionButton(
                        heroTag: 'callplace',
                        child: Icon(Icons.arrow_back, size: 32,),
                        onPressed: ()=> Navigator.pop(context),
                      ),
                    )
          ],
        ),
      ),
      
    );
  }
}

class Stats extends StatelessWidget {
  Stats({@required this.dato, this.res});
  final String dato;
  final int res;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(dato, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
          
          Text('$res', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),

        ],
      ),
    );
  }
}