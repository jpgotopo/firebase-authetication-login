import 'package:flutter/material.dart';

class PhasesGpm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('GPM Tracking'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          
            children: <Widget>[
              BannerTitled(
                color: Color(0xFFFE9000),
                texto: 'Fases',
                ancho: 0.8
              ),
              SizedBox(height: 60.0),
              BannerTitled(
                color: Color(0xFF0055FE),
                texto: 'Fase 1',
                ancho: 0.3
              ),
              BannerTitled(
                color: Color(0xFFFE7700),
                texto: 'Fase 2',
                ancho: 0.4
              ),
              BannerTitled(
                color: Color(0xFFFE0034),
                texto: 'Fase 3',
                ancho: 0.6
              ),
              
            ],
          ),
        
      )
    );
    
    

    
      
    
  }

}

class BannerTitled extends StatelessWidget {
  BannerTitled({this.color, this.texto, this.ancho});
  final Color color;
  final String texto;
  final double ancho;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Material(
      
      elevation: 8.0,
      borderRadius: BorderRadius.circular(20.0),
      /* shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)), */
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          alignment: AlignmentDirectional.center ,
          children: <Widget>[
            
            Container(
              
              height: 76.0,
              width: media.height * ancho,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), 
                color: color,

              ),
            ),
            Text(texto, style:TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold)),
          ],
        ),
      )
      
    );
  }
}

class InfoFase1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
        SizedBox(height: 32.0),
        BannerTitled(
          color: Color(0xFF0055FE),
          texto: 'Fase 1',
          ancho: 0.3
        ),

      ],
    );
  }
}

class DataInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF67cf44),
                Color(0xFF00C6F9),
                Color(0xFF00C6F9),
                Color(0xFF67CF44),
              ],
            ),
          )
        ),
        Row(
          children: <Widget>[
            
          ],
        )
      ],
    );
  }
}