import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class LineaTiempo extends StatefulWidget {
  @override
  _LineaTiempoState createState() => _LineaTiempoState();
}

class _LineaTiempoState extends State<LineaTiempo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        title: Text('Mi Línea de Tiempo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Timeline.builder(
        
          itemBuilder: (BuildContext context, int i){
            return TimelineModel(
              Container(
                height: 100,
                child: Column(

                  children: <Widget>[
                    lineaTiempoItem[i],
                  ],
                  
                  
                ),
                    
                  
                
              ),
              iconBackground: Colors.lightGreen,
              icon: Icon(Icons.arrow_downward, color: Colors.blue,)
            );
          },
          position: TimelinePosition.Left,
          itemCount: lineaTiempoItem.length,
          physics: BouncingScrollPhysics(),

        )

      )
      
    );
  }
}
List<LineaTiempoItems> lineaTiempoItem = [
  LineaTiempoItems(
    titulo: 'Inicio de Mi llamado',
    fecha: '2005',
    iconoT: IconButton(icon: Icon(Icons.hourglass_full, color: Colors.blueAccent, ), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Estudios Teológicos',
    fecha: '2007',
    iconoT: IconButton(icon: Icon(Icons.book, color: Colors.green,), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Estudios Universitarios',
    fecha: '2007',
    iconoT: IconButton(icon: Icon(Icons.battery_full, color: Colors.amber,), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Estudios Teológicos',
    fecha: '2012',
    iconoT: IconButton(icon: Icon(Icons.cached, color: Colors.orange,), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Salida Fase 1',
    fecha: '2016',
    iconoT: IconButton(icon: Icon(Icons.outlined_flag, color: Colors.red,), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Salida Fase 2',
    fecha: '2020',
    iconoT: IconButton(icon: Icon(Icons.landscape, color: Colors.purple,), onPressed: (){},)

  ),
];
class LineaTiempoItems extends StatelessWidget {
  LineaTiempoItems({this.iconoT, this.titulo, this.fecha});
  final IconButton iconoT;
  final String titulo;
  final String fecha;
  Widget build(BuildContext context) {
    return  Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(
                            color: Colors.black54,
                            offset: new Offset(3.0, 2.0)
                          )]

                        ),
                      ),
                      iconoT,
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0XFFeeeeee),
                      shape: BoxShape.rectangle,
                      boxShadow: [BoxShadow(
                        color: Colors.green,
                        offset: new Offset(3.0, 2.0)
                      )]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        
                        children: <Widget>[
                          
                          Text('Paso: $titulo', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text('Fecha: $fecha', style: TextStyle(color: Colors.green),)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          );
        
      
    
  }
}

