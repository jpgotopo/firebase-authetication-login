import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gpm_version_4/pages/settings.dart';
import 'package:gpm_version_4/screens/curso_vamos.dart';
import 'package:gpm_version_4/screens/fases.dart';
import 'package:gpm_version_4/screens/profile_ind.dart';
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
        '/screen10': (context) => MyApp(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 55.0,
          height: 55.0,
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
        trailing: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              height: 40.0,
              width: 90.0,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text("Fase 3", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),),
          ],
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
        icono: IconButton(icon: Icon(Icons.person), onPressed: () => Navigator.pushNamed(context, '/screen2')),
        colorBox: Colors.blue,
        colorIcon: Colors.white,
      ),
      MenuPrincipalItems(
        title: "Timeline",
        icono: IconButton(icon: Icon(Icons.hourglass_full), onPressed: (){Navigator.of(context).pushNamed('/screen3');},),
        colorBox: Colors.red,
        colorIcon: Colors.white,
      ),
      MenuPrincipalItems(
        title: "Fases",
        icono: IconButton(icon: Icon(Icons.loop), onPressed: (){},),
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
    Route transcultural = MaterialPageRoute(builder: (context)=>MyApp());
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: FloatingActionButton(
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
    Route todos = MaterialPageRoute(builder: (context)=>TodosPage());
    Route transcultural = MaterialPageRoute(builder: (context)=>MyApp());
    Route vamos = MaterialPageRoute(builder: (context)=>CursoVamos());
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),

      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              WholeIcon(
                trayecto: null,
                iconow: Icon(Icons.lightbulb_outline, size: 32,),
                linea1: 'Claridad en',
                linea2: 'el Llamado',
                colorw: Colors.amber,
              ),
              
              WholeIcon(
                trayecto: null,
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
                trayecto: null,
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
                trayecto: null,
                iconow: Icon(Icons.language, size: 32,),
                linea1: 'Estudios',
                linea2: 'Transculturales',
                colorw: Colors.green,
              ),              
              WholeIcon(
                trayecto: null,
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
                trayecto: vamos,
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
                trayecto: vamos,
                iconow: Icon(Icons.book, size: 32,),
                linea1: 'Manual',
                linea2: 'Vamos',
                colorw: Colors.red,
              ),
              WholeIcon(
                trayecto: transcultural,
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
  final Route trayecto;
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
            child: iconow,
            backgroundColor: colorw,
            onPressed: () {
              Navigator.push(context, trayecto);
            },
          ),
        ),
        Text(linea1),
        Text(linea2),

      ],
    );
  }
}
