import 'package:flutter/material.dart';

class LanguageAdvance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      
      body: SafeArea(
        child: Center(
          child: Column(
            
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical:15),
                alignment: Alignment.center,
                height: media.height * 0.15,
                width: media.width * 0.85 ,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [BoxShadow(
                    color: Colors.black54,
                    offset: new Offset(3.0, 3.0)
                  )]
                ),
                child: Text('Avances en el Idioma', style: TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.w700),),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: media.height * 0.55,
                width: media.width * 0.9,
                child: ListView(
                  children: <Widget>[
                    CardPhase(color: Colors.green, phase: 'Básico'),
                    CardPhase(color: Colors.orange, phase: 'Intermedio'),
                    CardPhase(color: Colors.lightBlue, phase: 'Avanzado',)
                    
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: FloatingActionButton(
                  heroTag: 'language',
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.arrow_back, size: 32,),
                  onPressed: ()=> Navigator.pop(context),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchBox extends StatefulWidget {
  
  SwitchBox({Key key, @required this.cycle, }) : super(key: key);
  final int cycle;
  @override
  _SwitchBoxState createState() => _SwitchBoxState();
}

class _SwitchBoxState extends State<SwitchBox> {
  @override
  Widget build(BuildContext context) {
    bool isFinished = false;
    final medias = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(
            color: Colors.black45,
            offset: new Offset(4.0, 3.0)
          )],
        ),
        height: medias.height * 0.11,
        width: medias.width * 0.22,
        child: Center(
          child: Column(
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: Text(widget.cycle.toString(), style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w700),),
               ),
               Switch(
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 value: isFinished,
                 onChanged: (value){
                   setState(() {
                     isFinished = value;
                   });
                 },
                 activeTrackColor: Colors.lightBlueAccent, 
                 activeColor: Colors.green[500],
                 inactiveThumbColor: Colors.red,
               )
               
             ],
           ),
        ),

      ),
    );
  }
}

List<SwitchBox> swtichItems = [
  SwitchBox(cycle: 1,),
  SwitchBox(cycle: 2,),
  SwitchBox(cycle: 3,),
  SwitchBox(cycle: 4,),
  SwitchBox(cycle: 5,),
  SwitchBox(cycle: 6,),
  SwitchBox(cycle: 7,),
  SwitchBox(cycle: 8,),
  SwitchBox(cycle: 9,),
  SwitchBox(cycle: 10,),
  SwitchBox(cycle: 11,),
  SwitchBox(cycle: 12,),
];

class CardPhase extends StatelessWidget {
  final Color color;
  final String phase;
  CardPhase({this.color, this.phase});
  @override
  Widget build(BuildContext context) {
    final mediac = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Card(
        color: color,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Container(
          height: mediac.height * 0.25,
          width: mediac.width * 0.9,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(phase, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
              ), 
              Container(
                height: mediac.height * 0.13,
                width: mediac.width * 0.8,
                child: ListView(
                  
                  scrollDirection: Axis.horizontal,
                  children: swtichItems,
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

//TODO Para acceder, en la base de datos debe haber un campo si aplica o no, es decir, si no tiene o si que estudiar ingles, si esa opcion es true accede a este screen, si es falsa, accede a un screen donde diga que no aplica a esta opcion//