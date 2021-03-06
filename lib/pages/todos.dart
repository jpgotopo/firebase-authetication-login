import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gpm_version_4/pages/settings.dart';
import 'package:gpm_version_4/screens/callclarity.dart';
import 'package:gpm_version_4/screens/callplace.dart';
import 'package:gpm_version_4/screens/curso_vamos.dart';
import 'package:gpm_version_4/screens/fases.dart';
import 'package:gpm_version_4/screens/language_advance.dart';
import 'package:gpm_version_4/screens/localechurch.dart';
import 'package:gpm_version_4/screens/misioneros.dart';
import 'package:gpm_version_4/screens/profile_ind.dart';
import 'package:gpm_version_4/screens/teologicos.dart';
import 'package:gpm_version_4/screens/timeline.dart';
import 'package:gpm_version_4/screens/transcultural.dart';
/* class PrincipalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      home: TodosPage(),
      routes: <String, WidgetBuilder>{
        //Rutas iconos menu principal
        '/': (context) => TodosPage(),
        '/screen2': (context) => PerfilIndividual(),
        '/screen3': (context) => LineaTiempo(),
        '/screen4': (context) => ScreenPhases(),
        '/screen5': (context) => SettingsPage(), //TODO terminar de corregir Calendario,
        //Rutas íconos menú secundario
        '/screen6': (context) => ScreenPhases(),
        '/screen7': (context) => ScreenPhases(),
        '/screen8': (context) => ScreenPhases(),
        '/screen9': (context) => ScreenPhases(),
        '/screen10': (context) => TransCultural(),
        '/screen11': (context) => ScreenPhases(),
        '/screen12': (context) => ScreenPhases(),
        '/screen13': (context) => ScreenPhases(),
      },
    );
  }
  
} */
//TODO colocar rutas en routes.dart y enlazar con dicho archivo
class TodosPage extends StatefulWidget {
  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('GPM Tracking', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),), 
        backgroundColor: Colors.green[500], 
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Profile(),
          Divider(),
          MenuPrincipal(),
          Divider(),
          MenuSecundario(),


        ],
      ),

      
    );
  }
}
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: media.height * 0.081,
          height: media.height * 0.081,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('jean_paul.png')
              )
          ),

        ),
        title: Text(
          "Jean Paul Gotopo",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text("Lima Centro", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11)),
        trailing: Container(
          alignment: AlignmentDirectional.center,  
          height: 40.0,
          width: 90.0,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text("Fase 3", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),),
        ),

      ),

    );
  }
}

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    
    
    List<MenuPrincipalItems> menuPrincipalItem = [
      MenuPrincipalItems(
        title: "Perfil",
        icono: IconButton(icon: Icon(Icons.person), onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => PerfilIndividual()))),
        colorBox: Colors.blue,
        colorIcon: Colors.white,
      ),
      MenuPrincipalItems(
        title: "Timeline",
        icono: IconButton(icon: Icon(Icons.hourglass_full), onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => LineaTiempo()))),
        colorBox: Colors.red,
        colorIcon: Colors.white,
      ),
      MenuPrincipalItems(
        title: "Fases",
        icono: IconButton(icon: Icon(Icons.loop), onPressed: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => ScreenPhases()))),
        colorBox: Colors.amber,
        colorIcon: Colors.white,
      ),
      MenuPrincipalItems(
        title: "Recordatorio",
        icono: IconButton(icon: Icon(Icons.calendar_today), onPressed: (){},),
        colorBox: Colors.green,
        colorIcon: Colors.white,
      ),
      MenuPrincipalItems(
        title: "Contactos",
        icono: IconButton(icon: Icon(Icons.contacts), onPressed: () {},),
        colorBox: Colors.purple,
        colorIcon: Colors.white,
      ) 

  ];
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuPrincipalItem,
    );
  }
}
//List<String> pages = ['/profile', '/timeline', '/fases', '/recordatorio', '/contactos'];
class MenuPrincipalItems extends StatelessWidget {
  MenuPrincipalItems({this.title, this.icono, this.colorBox, this.colorIcon});
  final String title;
  final IconButton icono; //TODO cambiar tipo de variable icono por Icon, guardar funcion del onPressed en una variable
  final Color colorBox, colorIcon;
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: FloatingActionButton(
            heroTag: title,
            child: icono,
            backgroundColor: colorBox,
            onPressed: () {
              
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 10.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class MenuSecundario extends StatelessWidget {

  Widget build(BuildContext context) {
  
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),

      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              WholeIcon(
                trayecto: CallClarity(),
                iconow: Icon(Icons.lightbulb_outline, size: 32,),
                linea1: 'Claridad en',
                linea2: 'el Llamado',
                colorw: Colors.amber,
              ),
              
              WholeIcon(
                trayecto: CallPlace(),
                iconow: Icon(Icons.map, size: 32,),
                linea1: 'Lugal del',
                linea2: 'Llamado',
                colorw: Colors.red,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              WholeIcon(
                trayecto: TheologyStudies(),
                iconow: Icon(Icons.book, size: 32,),
                linea1: 'Estudios',
                linea2: 'Teológicos',
                colorw: Colors.blue,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              WholeIcon(
                trayecto: TransCultural(),
                iconow: Icon(Icons.language, size: 32,),
                linea1: 'Estudios',
                linea2: 'Transculturales',
                colorw: Colors.green,
              ),              
              WholeIcon(
                trayecto: LanguageAdvance(),
                iconow: Icon(Icons.translate, size: 32,),
                linea1: 'Avance en',
                linea2: 'el Idioma',
                colorw: Colors.orange,
              )

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              WholeIcon(
                trayecto: LocalChurch(),
                iconow: Icon(Icons.home),
                linea1: 'Compromiso',
                linea2: 'Iglesia Local',
                colorw: Colors.amber,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
             
              WholeIcon(
                trayecto: CursoVamos(),
                iconow: Icon(Icons.book, size: 32,),
                linea1: 'Manual',
                linea2: 'Vamos',
                colorw: Colors.red,
              ),
              WholeIcon(
                trayecto: MissionaryScreen(),
                iconow: Icon(Icons.assistant, size: 32,),
                linea1: 'Orar, Ofrendar',
                colorw: Colors.blue,
                linea2: 'Movilizar',
              )

            ],
          ),

        ],
      ),
    );
  }
  
}

class WholeIcon extends StatelessWidget {
  WholeIcon({@required this.iconow, @required  this.colorw, @required  this.trayecto, @required this.linea1, this.linea2});
  final Icon iconow;
  final Color colorw;
  final Widget trayecto;
  final String linea1;
  final String linea2;
  
  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0, top: 2),
          child: FloatingActionButton(
            heroTag: linea1+linea2,
            child: iconow,
            backgroundColor: colorw,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => trayecto
              ));
            },
          ),
        ),
        Text(linea1),
        Text(linea2),

      ],
    );
  }
}
