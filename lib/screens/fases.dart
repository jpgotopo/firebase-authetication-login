import 'package:flutter/material.dart';

class ScreenPhases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhasesGpm(),
      routes: <String, WidgetBuilder>{
        '/screen1': (BuildContext context) => PhasesGpm(),
        '/screen2': (BuildContext context) => InfoFase1(),
        //TODO terminar las rutas
      },
    );
  }
}
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
//Screen Secundario acerca de la Fase 1, a este Widget navegara el screen cuando de tap en Fase 1
class InfoFase1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
        
          children: <Widget>[
            SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.only(bottom:12.0),
              child: BannerTitled(
                color: Color(0xFF0055FE),
                texto: 'Fase 1',
                ancho: 0.3
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            DataInfo(
              info: 'Tener pasión para servir \n como Misionero',
            ),
            
            DataInfo(
              info: 'Compromiso con el trabajo \n misionero de la iglesia local',
            ),
            DataInfo(
              info: 'Iniciado en las reuniones \n mensuales de GPM regional',
            ),
            DataInfo(
              info: 'Iniciado en las lecciones \n del curso Vamos',
            ),

          ],
        )
      ),
    );
    
  }
}

class InfoFase2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
        
          children: <Widget>[
            SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.only(bottom:12.0),
              child: BannerTitled(
                color: Color(0xFFFE7700),
                texto: 'Fase 2',
                ancho: 0.3
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            ListView(),
            DataInfo(
              info: 'Tener claro el llamado misionero',
            ),
            
            DataInfo(
              info: 'Tener claro el lugar del llamado \nmisionero',
            ),
            DataInfo(
              info: 'Participar activamente del  GPM \nRegional',
            ),
            DataInfo(
              info: 'Participar activamente de \n las clases del Manual Vamos',
            ),
            DataInfo(
              info: 'Apoyar a algún proyecto, ya sea \n en oración, movilización u ofrenda ',
            ),

          ],
        )
      ),
    );
  }
}

class DataInfo extends StatefulWidget {
  DataInfo({Key key, this.info});
  final String info;

  
  @override
  _DataInfoState createState() => _DataInfoState();
}

class _DataInfoState extends State<DataInfo> {
  _DataInfoState();
  
  @override
  Widget build(BuildContext context) {
    
    //bool _marcado1 = false;
    bool isSwitched = true;
    return Material(
      
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Row(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /* Checkbox(
                value: _marcado1,
                onChanged: (bool valor) {
                  setState((){
                    _marcado1 = valor;
                  });
                },
              ), */
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeTrackColor: Colors.lightGreenAccent, 
                activeColor: Colors.green[500],
              ),
              Text(widget.info, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            ],
          ),
          //padding: EdgeInsets.all(10.0),
          
          height: 73.0,
          width: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xFF99ebb4),
                Color(0xFF00C6F9),
                Color(0xFF00C6F9),
                
              ],
            ),
          )
        ),
      ),
            
            
            
          
        
      
    );
  }
}