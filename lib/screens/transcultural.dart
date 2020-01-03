import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:gpm_version_4/screens/fases.dart';

class TransCultural extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Estudios Transculturales'), 
          centerTitle: true, elevation: 10.0, 
          backgroundColor: Colors.lightGreen,
          leading: IconButton(icon: Icon(Icons.arrow_back), 
            onPressed: () {
              Navigator.of(context).pop();
            },),
          
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CollapsingList(),
        ),
      ),
    );
  }
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
final double minHeight;
  final double maxHeight;
  final Widget child;
  
@override
  double get minExtent => minHeight;
@override
  double get maxExtent => math.max(maxHeight, minHeight);
@override
  Widget build(
      BuildContext context, 
      double shrinkOffset, 
      bool overlapsContent) 
  {
    return new SizedBox.expand(child: child);
  }
@override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText, Color backcolor,) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 100.0,
        maxHeight: 240.0,
        child: Container(
            decoration: BoxDecoration(
              color: backcolor,
              borderRadius: BorderRadius.circular(10)
            ),
             child: Center(child:
                Text(headerText, style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),))),
      ),
    );
  }
@override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('Módulo I', Color(0xFF5AA73F)),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildListDelegate(
            [
              DataInfo(info: 'Teología Biblica de las Misiones'),
              DataInfo(info: 'Grandes Religiones Activas \n en el mundo I'),
              DataInfo(info: 'Grandes Religiones Activas \n en el mundo II'),
              DataInfo(info: 'Estrategias de Evangelismo Mundial'),
              DataInfo(info: 'Sectas y Filosofías Activas \n en el mundo'),
              DataInfo(info: 'Historia de las Misiones'),
              DataInfo(info: 'La Iglesia como Agente Misionero'),
              DataInfo(info: 'Misiones en las Etnias del Perú'),
              DataInfo(info: 'Fonética y Fonología'),
              DataInfo(info: 'Introducción a la Lingüística',),
            ],
          ),
        ),
        //TODO Trabajar con los Mediaquery para dar minHeight y maxHeight
        makeHeader('Módulo II', Color(0xFF2185BF)),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildListDelegate(
            [
              DataInfo(info: 'Teología Biblica de las Misiones'),
              DataInfo(info: 'Grandes Religiones Activas \n en el mundo I'),
              DataInfo(info: 'Grandes Religiones Activas \n en el mundo II'),
              DataInfo(info: 'Estrategias de Evangelismo Mundial'),
              DataInfo(info: 'Sectas y Filosofías Activas \n en el mundo'),
              DataInfo(info: 'Historia de las Misiones'),
              DataInfo(info: 'La Iglesia como Agente Misionero'),
              DataInfo(info: 'Misiones en las Etnias del Perú'),
              DataInfo(info: 'Fonética y Fonología'),
              DataInfo(info: 'Introducción a la Lingüística',),
            ],
          ),
        ),
        makeHeader('Módulo III', Color(0xFFFE7700)),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildListDelegate(
            [
              DataInfo(info: 'Seguridad y Tecnología en las Misiones'),
              DataInfo(info: 'Oralidad y Narrativa'),
              DataInfo(info: 'Proyecto de Grado'),
              Container(
                height: 210.0,
                
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Electivo'),
                      )
                    ),
                    Container(
                      height: 150,
                      width: 280,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          DataInfo(info: 'Misiones en la Ventana 4/14',),
                          DataInfo(info: 'Principios de Alfabetización',),
                          DataInfo(info: 'Inglés Técnico Bíblico',)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              DataInfo(info: 'Viaje de Experiencia Misionera'),
              
            ],
          ),
        ),
        
      ],
    );
  }
}