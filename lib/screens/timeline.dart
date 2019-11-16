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
        padding: EdgeInsets.all(15.0),
        child: Timeline.builder(
        
          itemBuilder: (BuildContext context, int i){
            return TimelineModel(
              Container(
                height: 133,
                child: Column(
                  children: <Widget>[
                    Column(
                      children: lineaTiempoItem,
                      
                      
                    ),
                    
                  ],
                ),
              ),
              iconBackground: Colors.lightGreen,
              icon: Icon(Icons.arrow_downward, color: Colors.blue,)
            );
          },
          position: TimelinePosition.Left,
          itemCount: 5,
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
    iconoT: IconButton(icon: Icon(Icons.hourglass_full, size: 5,), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Estudios Teológicos',
    fecha: '2007',
    iconoT: IconButton(icon: Icon(Icons.book), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Estudios Universitarios',
    fecha: '2007',
    iconoT: IconButton(icon: Icon(Icons.battery_full), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Estudios Teológicos',
    fecha: '2012',
    iconoT: IconButton(icon: Icon(Icons.cached), onPressed: (){},)

  ),
  LineaTiempoItems(
    titulo: 'Salida Fase 1',
    fecha: '2016',
    iconoT: IconButton(icon: Icon(Icons.outlined_flag), onPressed: (){},)

  ),
];
class LineaTiempoItems extends StatelessWidget {
  LineaTiempoItems({this.iconoT, this.titulo, this.fecha});
  final IconButton iconoT;
  final String titulo;
  final String fecha;
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white54,
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
              ),
            ]
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  iconoT,
                  Column(
                    children: <Widget>[
                      Text('Paso: $titulo', style: TextStyle(fontSize: 24),),
                      Text('Fecha: $fecha')
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

