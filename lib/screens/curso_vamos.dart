import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CursoVamos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      child: Material(
        child: Container(
          height: media.height * 0.8,
          width: isPortrait ? media.width * 0.75 : media.width,
          child:ListView(
            
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top:10, bottom: 10),
                    alignment: Alignment.center,
                    height: media.height * 0.15,
                    width: isPortrait ? media.width * 0.75 : media.width * 0.45 ,
                    decoration: BoxDecoration(
                      color: Color(0xFFFE3B3B),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [BoxShadow(
                        color: Colors.black54,
                        offset: new Offset(3.0, 3.0)
                      )]
                    ),
                    child: Text('Manual Vamos', style: TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.w700),),
                  ),
                  
                  Container(
                    padding: EdgeInsets.all(8),
                    height: isPortrait ? media.height *0.65 : media.height *0.45,
                    width: isPortrait ? media.width : media.width * 0.80,
                    child: CustomScrollView(
                      slivers: <Widget>[
                        SliverGrid.count(
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 1.25,
                          crossAxisCount: 2,
                          children: <Widget>[
                            ContainerOfInfo(info: '1. Manteniendo la Vida Espiritual', color: Colors.green),
                            ContainerOfInfo(info: '2. Caracter del Misionero', color: Colors.blueAccent),
                            ContainerOfInfo(info: '3. Lo que debes saber antes de ir al Campo', color: Colors.greenAccent),
                            ContainerOfInfo(info: '4. Mentoría en las Misiones', color: Colors.orangeAccent),
                            ContainerOfInfo(info: '5. Cómo involucrar a la Iglesia en las Misiones', color: Colors.purpleAccent),
                            ContainerOfInfo(info: '6. Levantando un Equipo de Apoyo', color: Colors.yellowAccent),
                            ContainerOfInfo(info: '7. Comunicación Integral del Misionero', color: Colors.amberAccent),
                            ContainerOfInfo(info: '8. Cuidado Integral del Misionero', color: Colors.cyan,),
                            ContainerOfInfo(info: '9. Pureza Moral', color: Colors.deepPurpleAccent,),
                            ContainerOfInfo(info: '10. Cuidado de la Salud Física', color: Colors.lightGreen,),
                            ContainerOfInfo(info: '11. Salud Emocional', color: Colors.yellow,),
                            ContainerOfInfo(info: '12. Adaptación al Campo', color: Colors.teal,),
                            ContainerOfInfo(info: '13. Aprender un Idioma y una Cultura', color: Colors.red[500]),
                            ContainerOfInfo(info: '14. Relaciones del Misionero', color: Colors.blueAccent),
                            ContainerOfInfo(info: '15. Soltería en las Misiones', color: Colors.greenAccent),
                            ContainerOfInfo(info: '16. Familia Misionera', color: Colors.orangeAccent),
                            ContainerOfInfo(info: '17. Trabajo en Equipo', color: Colors.purpleAccent),
                            ContainerOfInfo(info: '18. Guerra Espiritual', color: Colors.yellowAccent),
                            ContainerOfInfo(info: '19. Discipulado y Formación de Líderes', color: Colors.amberAccent),
                            ContainerOfInfo(info: '20. Misiones Transformadoras', color: Colors.cyan,),
                            ContainerOfInfo(info: '21. Organización y Planificación Misionera', color: Colors.deepPurpleAccent,),
                            ContainerOfInfo(info: '22. Misiones en Países de Acceso Restringido', color: Colors.lightGreen,),
                            ContainerOfInfo(info: '23. Tu profesión y los negocios en el campo', color: Colors.yellow,),
                            ContainerOfInfo(info: '24. Capacitación Continua', color: Colors.teal,),

                          ],
                        )
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      heroTag: 'curso',
                      backgroundColor: Colors.red,
                      child: Icon( Icons.arrow_back ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
          
        ),
      ),
    );
  }
}

class ContainerOfInfo extends StatefulWidget {
  ContainerOfInfo({Key key, this.info, this.color}) : super(key: key);
  final String info;
  final Color color;
  @override
  _ContainerOfInfoState createState() => _ContainerOfInfoState();
}

class _ContainerOfInfoState extends State<ContainerOfInfo> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    bool isSwitched = false;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: media.height * 0.15,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(12)
        ),
        
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AutoSizeText(widget.info, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                inactiveThumbColor: Colors.red,
                activeTrackColor: Colors.lightBlueAccent, 
                activeColor: Colors.green[500],
              ),
              
            ],
          ),
        )
      ),
    );
  }
}