import 'package:flutter/material.dart';
import 'package:gpm_version_4/pages/settings.dart';
import 'package:gpm_version_4/screens/fases.dart';
import 'package:gpm_version_4/screens/profile_ind.dart';
import 'package:gpm_version_4/screens/timeline.dart';
class RutasIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodosPage(),
      routes: <String, WidgetBuilder>{
        //Rutas iconos menu principal
        '/screen1': (BuildContext context) => TodosPage(),
        '/screen2': (BuildContext context) => PerfilIndividual(),
        '/screen3': (BuildContext context) => LineaTiempo(),
        '/screen4': (BuildContext context) => ScreenPhases(),
        '/screen5': (BuildContext context) => SettingsPage(), //TODO terminar de corregir Calendario,
        //Rutas íconos menú secundario
        '/screen6': (BuildContext context) => ScreenPhases(),
        '/screen7': (BuildContext context) => ScreenPhases(),
        '/screen8': (BuildContext context) => ScreenPhases(),
        '/screen9': (BuildContext context) => ScreenPhases(),
        '/screen10': (BuildContext context) => ScreenPhases(),
        '/screen11': (BuildContext context) => ScreenPhases(),
        '/screen12': (BuildContext context) => ScreenPhases(),
        '/screen13': (BuildContext context) => ScreenPhases(),
      },
    );
  }
}
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
        icono: IconButton(icon: Icon(Icons.person), onPressed: (){Navigator.of(context).pushNamed('/screen2');},),
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
  final IconButton icono;
  final Color colorBox, colorIcon;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          
          
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(3.0),
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: colorBox,
                shape: BoxShape.circle,
              ),
              
              // child: Icon(
              //   icono,
              //   color: colorIcon, */
              // ),
            ),
            IconButton(
              color: colorIcon,
              icon: icono,
              onPressed: () {}
            ),
          ],
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,


                        ),
                      ),
                      
                      IconButton(icon: Icon(Icons.lightbulb_outline), onPressed: (){}, color: Colors.white, iconSize: 32,),

                    ],
                  ),
                  Text("Claridad en "),
                  Text("el Llamado")

                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,


                        ),
                      ),
                      IconButton(icon: Icon(Icons.map), onPressed: (){}, color: Colors.white, iconSize: 28,),

                    ],
                  ),
                  Text("Lugar del"),
                  Text("Llamado")

                ],

              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,


                        ),
                      ),
                      IconButton(icon: Icon(Icons.book), onPressed: (){}, color: Colors.white, iconSize: 32,),
                    ],
                  ),
                  Text("Estudios"),
                  Text("Teológicos"),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,


                        ),
                      ),
                      IconButton(icon: Icon(Icons.language), onPressed: (){}, color: Colors.white, iconSize: 32,),

                    ],
                  ),
                  Text("Estudios"),
                  Text("Transculturales"),

                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,


                        ),
                      ),
                      IconButton(icon: Icon(Icons.translate), onPressed: (){}, color: Colors.white, iconSize: 32,),

                    ],
                  ),
                  Text("Idioma"),
                  Text("       ")

                ],

              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.amber[700],
                          shape: BoxShape.circle,


                        ),
                      ),
                      IconButton(icon: Icon(Icons.home), onPressed: (){}, color: Colors.white, iconSize: 32,),
                    ],
                  ),
                  Text("Compromiso"),
                  Text("Iglesia Local"),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,


                        ),
                      ),
                      IconButton(icon: Icon(Icons.book), onPressed: (){}, color: Colors.white, iconSize: 32,),

                    ],
                  ),
                  Text("Manual"),
                  Text("Vamos"),

                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,


                        ),
                      ),
                      IconButton(icon: Icon(Icons.assistant), onPressed: (){}, color: Colors.white, iconSize: 32,),

                    ],
                  ),
                  Text("Orar, Ofrendar,"),
                  Text("Movilizar"),
                  

                ],

              ),

            ],
          ),

        ],
      ),
    );
  }
}